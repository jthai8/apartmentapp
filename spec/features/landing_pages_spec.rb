require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  # Given that I am on the apartment app landing page, I can see the title Apartments
  context 'Going to website' do
    Steps 'Being Welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see the title Apartments' do
        expect(page).to have_content("Apartments")
      end
    end
  end
end
