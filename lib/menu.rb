module Menu

	def dishes
		dishes = [
			{name: 'curry', price: 6.99},
			{name: 'rice', price: 1.99},
			{name: 'chips', price: 2.99},
		]
	end

	def list_menu_items
		dishes.map{ |item, price| menu_items << item }
	end

	def menu_items
		@menu_items = []
	end

end

