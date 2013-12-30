require 'spec_helper'

feature "User creates a contact inquiry", %q{
	As a site visitor
	I want to contact the site's staff
	So that I can tell them how awesome they are
} do 

	# Acceptance Criteria:
	# * I must specify a valid email address
	# * I must specify a subject
	# * I must specify a description
	# * I must specify a first name
	# * I must specify a last name

	context "with valid attributes" do
		it "creates a contact inquiry with valid attributes" do 
			visit '/contact_inquiries/new'

			fill_in "Email", with: "lala@example.com"
			fill_in "Subject", with: "Service"
			fill_in "Description", with: "Service was great"
			fill_in "First name", with: "Lala"
			fill_in "Last name", with: "Anthony"
			click_button "Create Contact inquiry"

			expect(page).to have_content "Contact inquiry was successfully created"
		end



	end

	context "with invalid attributes" do 
		it "sees errors for invalid attributes" do
			visit '/contact_inquiries/new'

			fill_in "Email", with: "lala@example.com"
			fill_in "Subject", with: "Service"
			fill_in "Description", with: "Service was great"
			fill_in "Last name", with: "Anthony"
			click_button "Create Contact inquiry"

			expect(page).to have_content "First name can't be blank"
		end
	end
	
end

