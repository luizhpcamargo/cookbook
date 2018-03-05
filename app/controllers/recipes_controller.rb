class RecipesController < ApplicationController
  before_action :load_collections, only: [:new, :edit, :create, :update]
  before_action :load_recipe, only: [:show, :edit, :update]
  before_action :check_owner, only: [:edit, :update]

  def create
    @recipe = current_user.recipes.build(recipes_params)
    if @recipe.save
      redirect_to root_path, notice: 'Saved with success'
    else
      render action: :new
    end
  end

  def new
    @recipe = current_user.recipes.build
  end

  def update
    if @recipe.update_attributes(recipes_params)
      redirect_to root_path, notice: 'Updated with success'
    else
      render action: :edit
    end
  end

  private

  def recipes_params
    params.require(:recipe).permit(:title, :description, :instructions,
                                   user_ids: [],
                                   ingredients_attributes: [
                                     :id,
                                     :component,
                                     :quantity,
                                     :unit_id
                                   ]
                                  )
  end

  def load_collections
    @units = current_user.units
    @users = User.where.not(id: current_user)
  end

  def load_recipe
    @recipe = current_user.recipes.find_by(id: params[:id])
  end

  def check_owner
    if @recipe.owner != current_user
      flash[:alert] = 'You only can change your own recipes'
      return
    end
  end
end
