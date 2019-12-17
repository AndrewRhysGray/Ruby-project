require_relative('../db/sql_runner')

class Member


  attr_reader( :id )
  attr_accessor( :first_name, :last_name, :DOB, :email, :gender )

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @DOB = options['DOB'].to_s
    @email = options['email']
    @gender = options['gender']
    @id = options['id'].to_i if options ['id']
  end


  def save()
    sql = "INSERT INTO members
    (
      first_name,
      last_name,
      DOB,
      email,
      gender
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@first_name, @last_name, @DOB, @email, @gender]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end


  def self.all()
    sql = "SELECT * FROM members"
    results = SqlRunner.run( sql )
    return results.map { |member| Member.new( member ) }
  end


  def self.find( id )
    sql = "SELECT * FROM members
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Member.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM members"
    SqlRunner.run( sql )
  end

end
