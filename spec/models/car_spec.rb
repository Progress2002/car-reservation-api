require 'rails_helper'
RSpec.describe Car, type: :model do
  let (:user) {User.create(username: "sam", email: "sam@gmail.com", password: "password")}
  subject do
    Car.new(user_id: user.id, name: "Honda", image: 'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1200', description: 'Good car', model: '2023', price: 23000.0 )
  end
  context "Testing validations" do
    it "Car should be invalid with name set to nil" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "Car should be invalid with image set to nil" do
      subject.image = nil
      expect(subject).to_not be_valid
    end
    it "Car should be invalid with description set to nil" do
      subject.description = nil
      expect(subject).to_not be_valid
    end
    it "Car should be invalid with price set to nil" do
      subject.price = nil
      expect(subject).to_not be_valid
    end
    it "Car should be valid with presence of all valid attributes" do
      expect(subject).to be_valid
    end
  end
end
