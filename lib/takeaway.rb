require_relative 'basket'
require_relative 'menu'

class Takeaway

	attr_reader :menu, :basket

	def initialize menu, basket
		@menu = menu
		@basket = basket
	end

	def list_menu
		menu.list_dishes
	end

	def list_basket
		basket.list_basket
	end

	def add_item(choice, basket)
		menu.add_item_to_basket(choice, basket)
	end

end
