# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Restaurant.create(
  name: "Benihana",
  address: "123 Benny St.",
  phone_number: "416-413-2222",
  cuisine_type: "Japanese"
)

Restaurant.create(
  name: "Terroni",
  address: "565 Terroni St.",
  phone_number: "416-454-4545",
  cuisine_type: "Italian"
)

Restaurant.create(
  name: "Tom Jones Steakhouse",
  address: "565 Tom Jones St.",
  phone_number: "416-667-4648",
  cuisine_type: "Steakhouse"
)
Restaurant.create(
  name: "Woodlot",
  address: "565 Woodlot St.",
  phone_number: "416-444-4444",
  cuisine_type: "Canadian"
)

Reservation.create(
  # date: "2016-11-25",
  date: Date.new(2016, 11, 25),
  time: "18:00:00",
  party_size: 2,
  user_id: 1,
  restaurant_id: 1
)
