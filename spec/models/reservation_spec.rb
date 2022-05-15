require 'rails_helper'

RSpec.describe Reservation, type: :model do

  describe "associations" do
    it { should belong_to(:room) }
    it { should belong_to(:service) }
    it { should belong_to(:user) }
  end

  describe "validations" do
    it { should validate_presence_of(:check_in) }
    it { should validate_presence_of(:check_out) }
    it { should validate_presence_of(:room_id) }
    it { should validate_presence_of(:user_id) }
  end

end
