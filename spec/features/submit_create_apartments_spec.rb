require 'rails_helper'

RSpec.feature "SubmitCreateApartments", type: :feature do
  context 'Creating an apartment with details' do
      Steps 'Creating an apartment' do
        Given 'I am on the New Apartment page' do
          visit '/apartments/new'
        end
        When 'I click on new Create Apartment' do
          click_button 'Create Apartment'
        end
        Then 'I expect to see a page with apartment details' do
          expect(page).to have_content("Apartment was successfully created.")
      end
      And 'I expect to see a map' do
        expect(page).to have_css('div#apartment_map')
      end
    end
  end
end
