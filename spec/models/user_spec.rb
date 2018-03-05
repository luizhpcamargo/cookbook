require 'rails_helper'

RSpec.describe User, type: :model do

  it { expect(User).to respond_to :from_omniauth }
  it { should have_many :recipes }
  it { should have_and_belong_to_many :shared_recipes}
end
