class HomeController < ApplicationController
  def index
    @recipes = current_user.recipes
    @shared_recipes = current_user.shared_recipes
  end
end
