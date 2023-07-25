require 'rails_helper'
RSpec.describe User, type: :model do
  subject do
    User.new(username: 'sam', email: 'sam@gmail.com', password: 'password')
  end
  context 'Testing validations' do
    it 'User should be invalid with username set to nil' do
      subject.username = nil
      expect(subject).to_not be_valid
    end
    it 'User should be invalid with email set to nil' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it 'User should be invalid with password set to nil' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
    it 'User should be valid with presence of all valid attributes' do
      expect(subject).to be_valid
    end
  end
end
