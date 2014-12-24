require_relative 'menu'

class Takeaway

	include Menu

	def add_up_menu_price
		dishes.inject(0){ |memo,item| memo + item[:price] }
	end


	# def check_for_menu_item
	# 	dishes.map{ |item| p item[:name] }
	# end

end

p Takeaway.new.list_menu_items

p Takeaway.new.menu_items