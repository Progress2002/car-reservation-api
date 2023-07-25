require 'rails_helper'
RSpec.describe Reservation, type: :model do
  let (:user) {User.create(username: "sam", email: "sam@gmail.com", password: "password")}
  let (:car) {Car.create(user_id: user.id, name: "Honda", image: 'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1200', description: 'Good car', model: '2023', price: 23000.0 )}
  subject do
    Reservation.new(car_id: car.id, user_id: user.id, start_date: '1/2/2023', end_date: '5/6/2023', city: 'Lagos')
  end
  context "Testing validations" do
    it "Reservation should be invalid with city set to nil" do
      subject.city = nil
      expect(subject).to_not be_valid
    end
    it "Reservation should be invalid with start_date set to nil" do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end
    it "Reservation should be invalid with end_date set to nil" do
      subject.end_date = nil
      expect(subject).to_not be_valid
    end
    it "Reservation should be valid with presence of valid attributes" do
      expect(subject).to be_valid
    end
  end
end
