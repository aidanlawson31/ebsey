require 'rails_helper'

describe Account, type: :model do
  subject { build(:account) }

  describe 'validations' do
    it { should belong_to(:user) }
    it { should validate_presence_of(:name) }

    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end
