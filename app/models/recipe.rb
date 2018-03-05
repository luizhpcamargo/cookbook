class Recipe < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  validates_presence_of :owner_id, :title, :description
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  has_and_belongs_to_many :users, class_name: 'User', join_table: :users_recipes
  accepts_nested_attributes_for :users
end
