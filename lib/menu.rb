class Menu

	def initialize
		@dishes = dishes
	end

	def dishes
		dishes = [
			{name: 'margherita', price: 10.99},
			{name: 'pepperoni', price: 14.99},
			{name: 'hawaiian', price: 12.99},
			{name: 'chips', price: 2.99},
		]
	end

	def menu_items
		@menu_items = []
	end

	def list_dishes
		dishes.map{ |item, price| menu_items << item[:name] }
	end

	def add_up_menu_price
		dishes.inject(0){ |memo, item| memo + item[:price] }
	end

	def check_for_item(choice)
		list_dishes
		stocked(choice) == true ? "Yes, in stock" : "No, not currently in stock"
	end

	def stocked(choice)
		item = @dishes.find { |item| item[:name] == choice } ? true : false
	end

	# def check_item_price(item)
		
	# end


end

