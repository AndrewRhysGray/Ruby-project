require_relative("../models/session")
require_relative("../models/booking")
require_relative("../models/member")
require("pry")


Member.delete_all()
Session.delete_all()

member1 = Member.new({
  "first_name" => "John",
  "last_name" => "Doe",
  "DOB" => "27/03/97",
  "email" => "JonDoe@email.com",
  "gender" => "male"
})


member1.save()

member2 = Member.new({
  "first_name" => "Jane",
  "last_name" => "Doe",
  "DOB" => "26/03/97",
  "email" => "JaneDoe@email.com",
  "gender" => "female"
})

member2.save()


member3 = Member.new({
  "first_name" => "Dave",
  "last_name" => "Smith",
  "DOB" => "28/03/97",
"email" => "DaveSmith@email.com",
"gender" => "male"
})

member3.save()

 session1 = Session.new({
   "name" => "spin"
 })

 session1.save()


 session2 = Session.new({
   "name" => "weightlifting"
 })

 session2.save()

session3 = Session.new({
  "name" => "treadimill"
})

session3.save()



binding.pry
nil
