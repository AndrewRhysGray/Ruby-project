require_relative("../models/session.rb")
require_relative("../models/booking")
require_relative("../models/member")
require("pry")

member1 = Member.new({
  "first_name" => "John"
  "last_name" => "Doe",
  "DOB" => 27/03/97,
  "email" => "JonDoe@email.com",
  "gender" => "male"
})

member2 = Member.new({
  "first_name" => "Jane"
  "last_name" => "Doe",
  "DOB" => 26/03/97,
  "email" => "JaneDoe@email.com",
  "gender" => "female"
})

member3 = Member.new({
  "first_name" => "Dave"
  "last_name" => "Smith"
  "DOB" => 28/03/97,
"email" => "DaveSmith@email.com",
"gender" => "male"

 session1 = Session.new({
   "name" => "spin"
 })

 session2 = Session.new({
   "name" => "weightlifting"
 })

session3 = Session.new({
  "name" = "treadimill"
})
