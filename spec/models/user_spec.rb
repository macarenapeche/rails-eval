RSpec.describe User, type: :model do 
  #validations tests
  describe 'validations' do
    subject(:user) { User.new(name: "Macarena", email: "macarena@toptal.com") }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value('email@domain.com').for(:email) }
    it { should_not allow_value('giberish').for(:email) }
  end

  #associations tests
  describe 'associations' do
    it { should have_many(:documents) }
  end
  
  #method tests

end
