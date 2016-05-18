require_relative( '../db/sqlrunner.rb')

class Order

  attr_accessor :id, :name, :address, :size, :quantity

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
    @size = options['size'].to_i
    @quantity = options['quantity'].to_i
  end

  def new_order
    sql = "INSERT INTO orders (name, address, size, quantity)
           VALUES ('#{@name}', '#{@address}', #{@size}, #{@quantity})"
    SqlRunner.run( sql )
  end

  def self.all
    sql = "SELECT * FROM orders"
    orders = SqlRunner.run( sql )
    result = orders.map { |order| Order.new( order ) }
  end

  def get_order( id )
    sql = "SELECT * FROM orders WHERE id=#{id}"
    orders = SqlRunner.run( sql )
    result = Order.new( orders[0] )
  end

end
