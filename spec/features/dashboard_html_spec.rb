# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Dashboard page', type: :feature do
  describe 'when a user visits the dashboard' do
    scenario 'has the correct static content' do
      visit root_path

      expect(page).to have_content 'Boc-hord'
    end
  end
end
