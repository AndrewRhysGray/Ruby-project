require_relative('../db/sql_runner')

class Member
  attr_reader( :id )
  attr_accessor( :first_name, :last_name, :DOB, :email, :gender )

  def initialize()
@first_name = options['first_name']
@last_name = options['last_name']
@DOB = options['DOB']
@email = options['email']
@gender = options['gender']
@id = options['id'].to_i if options ['id']
  end
