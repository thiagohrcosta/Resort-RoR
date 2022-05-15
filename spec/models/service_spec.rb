require 'rails_helper'

RSpec.describe Service, type: :model do

  describe "associations" do
  end

  describe "validations" do
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price) }

    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:quantity) }

    it { should validate_presence_of(:description) }
  end
end
