user_1 = User.create(username: "JohnDoe", email: "john@example.com", password: "password")
user_2 = User.create(username: "JaneSmith", email: "jane@example.com", password: "password")
user_3 = User.create(username: "MikeJohnson", email: "mike@example.com", password: "password")
user_4 = User.create(username: "EmilyBrown", email: "emily@example.com", password: "password")
user_5 = User.create(username: "DavidLee", email: "david@example.com", password: "password")


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
        start_date: Faker::Date.between(from: 1.month.from_now, to: 2.months.from_now),
        end_date: Faker::Date.between(from: Date.today, to: 1.month.from_now),
        city: Faker::Address.city,
        car: car
      )
    end
  end
  
  
  
