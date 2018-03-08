require 'byebug'

class Store
	def initialize(logo = "Apple Store")
	end
	
	$count = 0
	$countSells = 0

	attr_accessor :productName
	attr_reader :employees
	attr_writer :productDevolucion


	# protected

	def sell(product, price)
		puts "This #{product} was sold by $#{price}"
		$countSells += 1
	end

	def devolution(product)
		$count += 1
	end

	private

	def amountReturnedProduct
		puts "#{$count} returned"
	end

	public
	def message
		puts "Our company is selling as never"
	end

	def toString
		puts "Returned Amount: #{$count}\nProductName: #{@productName}\nAmount Sells: #{$countSells}"
	end

end
