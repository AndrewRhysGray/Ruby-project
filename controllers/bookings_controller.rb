require( 'pry' )
require_relative( '../models/session.rb' )
require_relative( '../models/member.rb' )
require_relative( '../models/booking.rb' )
also_reload( '../models/*' )


get '/bookings' do
  @bookings = Booking.all
  erb ( :"bookings/index" )
end

get '/bookings/new' do
  @members = Member.all
  @sessions = Session.all
  erb(:"bookings/new")
end

post '/bookings/new' do
  booking = Booking.new( params)
  booking.save
  redirect to ("/bookings")
end
