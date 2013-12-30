require 'spec_helper'

feature "user deletes a contact inquiry", %q{
	
	As an admin
	I want to delete an inquiry
	So that I can remove spam or other undesirable inquiries
}do

	# * I can remove an item from the listing of contact inquiries

	it "deletes a contact inquiry" do
		inquiry1 = ContactInquiry.create!(email: 'lala@example.com', subject: 'service', description: 'service was great', first_name: 'Lala', last_name: 'Anthony')
		inquiry2 = ContactInquiry.create!(email: 'melo@example.com', subject: 'roomservice', description: 'slow', first_name: 'Carmelo', last_name: 'Anthony')
		
		visit contact_inquiries_path

		expect(page).to have_content inquiry1.first_name

		#save_and_open_page
		within "#contact_inquiry_#{inquiry1.id}" do
		  click_on "Destroy"
		end


		expect(page).to_not have_content inquiry1.first_name 

	end

end
