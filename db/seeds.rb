# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Swim.destroy_all
Venue.destroy_all
User.destroy_all

u1 = User.create!(first_name: "Josh", last_name: "Helman", username: "Josh", email: "josh@ga.co", image: "https://vignette3.wikia.nocookie.net/xmenmovies/images/0/09/Josh_Helman.jpg/revision/latest?cb=20130625232019", password: "password", password_confirmation: "password")
u2 = User.create!(first_name: "Sarah", last_name: "Hay", username: "Sarah", email: "sarah@ga.com", image: "https://s-media-cache-ak0.pinimg.com/236x/2d/be/58/2dbe58396f406a24fb4bbbfe4ae85b15--sarah-ellen-living-dolls.jpg", password: "spassword", password_confirmation: "spassword")
u3 = User.create!(first_name: "Vanessa", last_name: "Williamson", username: "Vanessa", email: "vanessa@ga.com", image: "https://pbs.twimg.com/profile_images/847612407191031808/8P4VrTn4_400x400.jpg", password: "vpassword", password_confirmation: "vpassword")

v1 = Venue.create!(name: "Printworks", address: "10 Beaconsfield Terrace Road, London W14 0PP", venue_rules: "You will need to sign in at the reception and kind reception staff will issue you with a towel. You need to bring only your swimming suit and a good will for a great swim. The length of the swiiming pool is 25m", image: "http://olympia.co.uk/sites/default/files/styles/main_with_1_sidebar__mobile/public/37degrees_gym_olympia.jpg?itok=7I41wvxF")

s1 = Swim.create!(title: "Fun, easy going swim", description: "Looking for up to five people to have a good fun easy pace swim for an hour", venue_id: v1.id, created_by: u1.id, startDate: "12/9/2017 17:00", endDate: "12/9/2017 19:00")
s2 = Swim.create!(title: "Intermediate swim", description: "We are going to motivate each other and complete 1.5mi swim in an hour", venue_id: v1.id, created_by: u2.id, startDate: "15/09/2017 12:00", endDate: "15/09/2017 17:00")
s3 = Swim.create!(title: "Advanced level swim", description: "I am preparing for triathlon this is and looking to train with someone and have healthy competition with", venue_id: v1.id, created_by: u3.id, startDate: "19/09/2017 12:00", endDate: "19/09/2017 19:00")

# create_table "swims", force: :cascade do |t|
#   t.string "title"
#   t.text "description"
#   t.datetime "startDate"
#   t.datetime "endDate"
#   t.bigint "venue_id"
#   t.bigint "user_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "created_by"
#   t.index ["user_id"], name: "index_swims_on_user_id"
#   t.index ["venue_id"], name: "index_swims_on_venue_id"
# end
#
# create_table "users", force: :cascade do |t|
#   t.string "username"
#   t.string "first_name"
#   t.string "last_name"
#   t.string "email"
#   t.text "image"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "venues", force: :cascade do |t|
#   t.string "name"
#   t.string "address"
#   t.text "image"
#   t.string "venue_rules"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
