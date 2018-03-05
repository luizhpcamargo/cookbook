class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :owner
      t.string :title
      t.string :description
      t.text :instructions
      t.timestamps
    end
  end
end
