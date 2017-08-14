Restaurant.destroy_all

5.times do
  info = {
    name: Faker::Name.title,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample
  }
  Restaurant.create(info)
end
