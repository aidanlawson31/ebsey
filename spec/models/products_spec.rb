require 'rails_helper'

describe Product, type: :model do
  subject { build(:product) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should belong_to(:category) }
    
    it "price must be valid" do
      subject.price = nil
      expect(subject.valid?).to be false

      subject.price = 550.531
      expect(subject.valid?).to be true

      subject.price = -14.532
      expect(subject.valid?).to be false
    end

    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end
