require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( '../shoos_back/model/shoos.rb' )

get '/' do
  erb( :home )
end

get '/order' do
  @shoo_order = Order.new( params )
  @shoo_order.new_order
  erb( :order )
end

post '/order' do
  new_order_id = @shoo_order.id.to_i
  @shoo_order.get_order(new_order_id)
  # binding.pry
  erb( :create )
end

# get '/login' do
#   if username == 'LewisJ' && password == 'password'
#     erb( :login )
#   else
#     erb( :login )
#   end
# end

get '/login' do # I want this to be posted after successful login
  @shoos = Order.all
  # binding.pry
  erb( :all_orders )
end
