require 'rails_helper'

RSpec.describe "Exchange Currency Process", :type => :feature do
  xit "exchange value", js: true do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'currency')
      fill_in 'quantity', with: '10'
      select('USD', from: 'currency_destination')
    end

    # save_and_open_page
    expect(page).to have_content("value")
  end

  xit "change money" do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'currency')
      fill_in 'quantity', with: '10'
      select('USD', from: 'currency_destination')
      find('img#change-money').click
    end

    expect(find(:css, 'select#currency').value ).to eq('USD')
    expect(find(:css, 'select#currency_destination').value ).to eq('EUR')
  end
end
