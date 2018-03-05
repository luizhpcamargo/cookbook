require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe){ Recipe.new }

  it { should have_many(:ingredients) }
  it { should belong_to :owner }
  it { should validate_presence_of :owner_id }
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
end
