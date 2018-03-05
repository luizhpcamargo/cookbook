class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.references :recipe
      t.string :component
      t.decimal :quantity
      t.references :unit
      t.timestamps
    end
  end
end
