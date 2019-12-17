require( 'pry' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

get '/members' do
  @members = Member.all()
  erb ( :"/members/index" )
end

get '/members/:id' do
  @member = Member.find(params['id'].to_i)
  erb( :"/members/show" )
end

post '/members' do
  @member = Member.new(params['id'].to_i)
  erb( :"/members/create" )
end
