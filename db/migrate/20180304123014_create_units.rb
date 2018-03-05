class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.references :user
      t.string :name
      t.string :acronym
      t.timestamps
    end
  end
end
