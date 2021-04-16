puts 'Deleting data if exists...'
Restaurant.destroy_all
puts 'Generating new data...'
10.times do
  restaurant = Restaurant.create(
    {
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: %w[chinese italian japanese french belgian].sample
    }
  )
  puts "Restaurant with ID: #{restaurant.id} was created!"
end
puts 'done!'
