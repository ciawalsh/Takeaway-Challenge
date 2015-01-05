require './lib/takeaway'
require './lib/menu'
require './lib/basket'

describe Takeaway do 

	let(:takeaway){Takeaway.new menu}
	let(:menu){Menu.new}

	context 'Pricing' do

		it 'should add up the prices of the dishes on the menu' do
			expect(menu.add_up_menu_price).to eq 41.96
		end

	end

	context 'Menu' do

		it 'should have a list of dishes' do
			expect(menu.list_dishes).to include ['chips']
		end

		it 'should check for a specific menu item' do
			expect(menu.check_for_item('chips')).to eq("Yes, in stock")
		end

		it 'should know if an item is not currently on the menu' do
			expect(menu.check_for_item('tango')).to eq("No, not currently in stock")
		end

		it 'should know the price of an item if its on the menu' do
			expect(menu.check_item_price('chips')).to eq 2.99
		end

	end

	context 'Basket' do

		it 'should allow an item to be added to it' do

		basket = Basket.new
		basket.menu = menu
		takeaway = Takeaway.new menu, basket

		takeaway.add_item('chips', basket)
		takeaway.add_item('margherita', basket)
		expect(basket.total).to eq 13.98

		end



	end

	context 'Functionality' do

		xit 'the Takeaway should be able to show a menu' do
			expect(takeaway.list_menu).to include ['chips']
		end

	end

	
end