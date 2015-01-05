require_relative 'menu'

class Basket

	attr_accessor :menu

	# attr_reader :menu
	# def menu
	# 	@menu
	# end

	# attr_writer :menu

	# def menu= value
	# 	@menu = value
	# end

	def initialize
		@basket = []
	end

	def basket_value
		@basket_value = []
	end

	def list_basket
		@basket.each{ |item| item }
	end

	def add_item(choice)
		@basket << choice
	end

	def total
		# list_basket { |item| @basket_value << menu.item_price(item) }
		# @basket_value

		@basket.inject(0){|memo, item| memo + menu.check_item_price(item)}
	end

end

# p Basket.new.add_item('chips')




