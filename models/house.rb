require_relative('../db/sql_runner.rb')

class House

  attr_reader :id, :name, :url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @url = options['url']
  end

  def save()
    sql = "INSERT INTO houses (name, url) VALUES ($1, $2) RETURNING *"
    values = [@name, @url]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)[0]
    return House.new(house)
  end

  def  self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map{|house| House.new(house)}
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
