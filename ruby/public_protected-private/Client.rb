require 'byebug'
require_relative 'Store'
require_relative 'Seller'


str = Store.new
slr = Seller.new

slr.name = "John Newman"
puts slr.name

slr.sell("iPhone 7", 2850)
slr.sell("iPhone 4", 1400)
slr.devolution("iPhone 4")
slr.sell("iPhone 5", 1850)
slr.sell("iPhone 5", 1850)
slr.sell("iPhone 6", 1950)
slr.devolution("iPhone 6")
slr.sell("iPhone 6", 1950)
slr.sell("iPhone 6", 1950)

str.toString
