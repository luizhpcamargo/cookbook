class Unit < ApplicationRecord
  validates_presence_of :name, :acronym
end
