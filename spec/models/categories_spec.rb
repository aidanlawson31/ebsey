require 'rails_helper'

describe Category, type: :model do
  subject { create(:category) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end