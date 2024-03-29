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
  cuisine_type: "Japanese",
  capacity: 100
)

Restaurant.create(
  name: "Terroni",
  address: "565 Terroni St.",
  phone_number: "416-454-4545",
  cuisine_type: "Italian",
  capacity: 75
)

Restaurant.create(
  name: "Mama's Pasta",
  address: "565 Main St.",
  phone_number: "416-874-7474",
  cuisine_type: "Italian",
  capacity: 80
)

Restaurant.create(
  name: "Tom Jones Steakhouse",
  address: "565 Tom Jones St.",
  phone_number: "416-667-4648",
  cuisine_type: "Steakhouse",
  capacity: 95
)
Restaurant.create(
  name: "Woodlot",
  address: "565 Woodlot St.",
  phone_number: "416-444-4444",
  cuisine_type: "Canadian",
  capacity: 115
)
