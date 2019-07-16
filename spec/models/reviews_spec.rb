require 'rails_helper'

describe Review, type: :model do
  subject { build(:review) }

  describe 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:rating) }
    
    it "rating should be valid" do
      subject.rating = 5
      expect(subject.valid?).to be true
    
      subject.rating = -1
      expect(subject.valid?).to be false
    
      subject.rating = 6
      expect(subject.valid?).to be false
    end
  
    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end
