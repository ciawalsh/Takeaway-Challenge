require './lib/takeaway'
require './lib/menu'

describe Takeaway do 

	let(:takeaway){Takeaway.new}

	context 'Pricing' do

		it 'should add up the prices of the dishes on the menu' do
			expect(takeaway.add_up_menu_price).to eq 11.97
		end

	end

	context 'Dishes' do

		xit 'should have a list of dishes' do
			takeaway.list_menu_items
			expect(takeaway.menu_items).to eq('curry')
		end

		xit 'should check for a specific menu item' do
			expect(takeaway.check_for_menu_item).to eq('curry')
		end

	end

	# context 'Functionality' do

	# 	it '' do

	# 	end

	# end

	
end