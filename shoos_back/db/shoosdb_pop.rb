require_relative( '../model/shoos.rb' )

order1 = Order.new( { 'name' => 'Aiden', 'address' => '31 Howards End', 'size' => 12, 'quantity' => 3 } )
order2 = Order.new( { 'name' => 'Chris', 'address' => '13 Luck Street', 'size' => 9, 'quantity' => 1 } )
order3 = Order.new( { 'name' => 'Lewis', 'address' => '41 Neverland', 'size' => 12, 'quantity' => 3 } )

o1 = order1.new_order
o2 = order2.new_order
o3 = order3.new_order
