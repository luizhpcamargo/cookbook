require 'rails_helper'

RSpec.describe Unit, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :acronym }
end
