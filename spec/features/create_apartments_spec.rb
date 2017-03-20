require 'rails_helper'

RSpec.feature "CreateApartments", type: :feature do
  context 'Going to New Apartment page form' do
    Steps 'Going to the form on new page' do
      Given 'I am on the landing page' do
        visit '/'
      end
      When 'I click on new apartment link' do
        click_link 'New Apartment'
        visit '/apartments/new'
      end
    end
  end
end
