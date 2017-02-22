# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email:"polo@hello.com" ,
  password:"password" ,
  password_confirmation: "password"
)
User.create(
  name:"nat" ,
  birthdate: "24/02/1990",
  legal_doc:"natpassport_scanned" ,
  email:"nat@hello.com" ,
  password:"password" ,
  password_confirmation: "password"
)


descriptions = [
" is an unusual, somewhat hostel-like, two bedroom apartment, located in Belgrade's wider city center area. It is suitable for up to six adults. For a surcharge of 5 euros per day the guests get TWO PARKING spots in the nearby garage",
" is a studio created for indulgence. With a jetted tub for two, black satin sheets on a double bed, a minibar and an abundance of dim lights, this little paradise for two will surely become a place of many return visits",
" is a perfect spot for two in the very center of the city. Just fifty meters away from the Republic Square, you may indulge champagne in a jacuzzi and gaze at your refection in the mirrored ceilings",
" is a large two bedroom apartment and a bathroom with a jacuzzi jetted bathtub. It is in the prime area of Belgrade and accommodates up to 6 people.",
" is a brand new one bedroom apartment with a Jacuzzi bathtub and an interesting fireplace in the greater city center area in Belgrade. Garage is available at a 5 euros per day surcharge",
" is a top notch, bona fide luxurious apartment with a hydro-massaging jetted tub. Nestled in a lovely spot in Vračar, in a brand new building, with mirrored ceiling, bathrobes and slippers and an infinite number of decorative luminaries, are just some of the details of this perfect oasis for two"
]
end
