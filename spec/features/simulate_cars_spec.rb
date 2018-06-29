require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do
  context 'Creating a car for simulating' do
    Steps 'Creating a car' do
      Given 'I am on the landing page' do
        visit '/'
      end
      When 'I fill in the car make and model year' do
        fill_in 'make', with: 'DeLorean'
        fill_in 'model_year', with: '1985'
      end
      And 'I can submit the information' do
        click_button 'Simulate Car'
      end
      And "I can see the car's info" do
        expect(page).to have_content('DeLorean')
        expect(page).to have_content('1985')
      end
      And 'I can see the speed of the car' do
        expect(page).to have_content('speed: 0km/h')
      end
      When "I can click the accelerate button" do
        click_button 'Accelerate'
      end
      Then 'the speed of the car should be 10Km/h higher' do
        expect(page).to have_content('speed: 10km/h')
      end
      When "I can click the decelerate button" do
        click_button 'Brake'
      end
      Then 'the speed of the car should be 7Km/h slower' do
        expect(page).to have_content('speed: 3km/h')
      end
      When 'I can set and release the parking brake' do
        choose('set')
        expect(page).to have_content('set')
        click_button 'Accelerate'
        expect(page).to have_content('speed: 0km/h')
      end
    end
  end
end
