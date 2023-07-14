user_1 = User.create(user_name: "JohnDoe", email: "john@example.com", password: "password")
user_2 = User.create(user_name: "JaneSmith", email: "jane@example.com", password: "password")
user_3 = User.create(user_name: "MikeJohnson", email: "mike@example.com", password: "password")
user_4 = User.create(user_name: "EmilyBrown", email: "emily@example.com", password: "password")
user_5 = User.create(user_name: "DavidLee", email: "david@example.com", password: "password")


User.all.each do |user|
    3.times do
      user.cars.create(
        name: Faker::Vehicle.make_and_model,
        image: 'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1200',
        description: Faker::Lorem.sentence,
        price: Faker::Number.decimal(),
        model: Faker::Vehicle.model
      )
    end
  end
  

  User.all.each do |user|
    2.times do
      car = Car.all.sample
      user.reservations.create(
        date: Faker::Date.between(from: Date.today, to: 1.month.from_now),
        city: Faker::Address.city,
        car: car
      )
    end
  end
