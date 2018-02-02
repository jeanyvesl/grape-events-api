# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create({
  "event_name": "Lecture H&D",
  "description": "Lecture about House & Decoration",
  "event_category": "House_and_decoration",
  "event_type": "lecture",
  "number_of_participants": 150,
  "website": "lecture.com"
})
Event.create({
  "event_name": "Construction Workshop",
  "description": "Test description for workshop",
  "event_category": "Architecture_Construction_and_Maintenance",
  "event_type": "workshop",
  "number_of_participants": 9,
  "website": "workshop.com"
})
Event.create({
  "event_name": "Seminar H",
  "description": "Seminar about History of Portugal",
  "event_category": "History_and_Archeology",
  "event_type": "seminar",
  "number_of_participants": 12,
  "website": "seminar.com"
})
Event.create({
  "event_name": "Pro Course on Tourism",
  "description": "Professional course about Tourism",
  "event_category": "Tourism_Hospitality_and_Catering",
  "event_type": "professional_course",
  "number_of_participants": 15,
  "website": "professional_course.com"
})
