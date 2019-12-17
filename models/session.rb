require_relative( '../db/sql_runner' )

class Session

  attr_reader( :name, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end


  def save()
    sql = "INSERT INTO sessions
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING id"
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT FROM sessions"
    results = SqlRunner.run( sql )
    return results.map { |member| Session.new( member ) }
  end

  def members
    sql = "SELECT m.* FROM members m INNER JOIN bookings b ON member_id = m.id WHERE b.session_id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return members.map { |member| Member.new( member ) }
  end


  def self.find( id )
    sql = "SELECT * FROM sessions
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Session.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM sessions"
    SqlRunner.run( sql )
  end

end
