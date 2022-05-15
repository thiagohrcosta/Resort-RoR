require 'rails_helper'

RSpec.describe Room, type: :model do

  describe "associations" do
    it { should have_one_attached(:photo) }
    it { should have_many(:reservations) }
  end

  describe "validations" do
    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:quantity).only_integer }

    it { should validate_presence_of(:bed) }
    it { should validate_numericality_of(:bed).only_integer }

    it { should validate_presence_of(:bathroom) }
    it { should validate_numericality_of(:bathroom).only_integer }

    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price) }

    it { should validate_presence_of(:description) }
  end

end
