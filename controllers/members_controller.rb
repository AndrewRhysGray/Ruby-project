require( 'pry' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

get '/members' do
  @members = Member.all()
  erb ( :"members/index" )
end

get '/members/new' do
  # @members = Member.new(params['id'])
  erb( :"members/new" )
end

get '/members/:id' do
  @member = Member.find(params['id'].to_i)
  erb( :"members/show" )
end

post '/members' do
  Member.new(params).save
  redirect to "/members"
end

# put '/members/:id' do
#   Member.new(params['id'].to_i)
#   erb( :"members/show" )
# end
