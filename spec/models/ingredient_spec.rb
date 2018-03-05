require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should belong_to :recipe }

  it { should validate_presence_of :unit_id }
  it { should validate_presence_of :component }
  it { should validate_presence_of :quantity }
end
