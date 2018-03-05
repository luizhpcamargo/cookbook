class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates_presence_of :unit_id, :component, :quantity
  def description
    "#{component}: #{quantity} #{unit.acronym}"
  end

  def unit
    Unit.find_by(id: unit_id)
  end
end
