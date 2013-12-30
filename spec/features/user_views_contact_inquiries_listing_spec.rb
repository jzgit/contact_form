require 'spec_helper'

feature "User visits the contact inquiries page", %q{
	As an admin
	I want to review contact inquiries
	So that I can respond or take action
} do 

	# * I can see a list of all contact inquiries

	it "can see a list of all contact inquiries" do
		inquiry1 = ContactInquiry.create!(email: 'lala@example.com', subject: 'service', description: 'service was great', first_name: 'Lala', last_name: 'Anthony')
		inquiry2 = ContactInquiry.create!(email: 'melo@example.com', subject: 'roomservice', description: 'slow', first_name: 'Carmelo', last_name: 'Anthony')
		
		visit contact_inquiries_path

		expect(page).to have_content inquiry1.first_name
		expect(page).to have_content inquiry2.first_name
	end
	
end