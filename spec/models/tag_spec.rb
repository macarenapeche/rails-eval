RSpec.describe Tag, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(32) }
  end

  describe 'associations' do
    it { should have_and_belong_to_many(:documents) }
  end
end
