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

	end

	context 'Functionality' do

		it 'the Takeaway should be able to show a menu' do
			expect(takeaway.list_menu).to include ['chips']
		end

	end

	
end