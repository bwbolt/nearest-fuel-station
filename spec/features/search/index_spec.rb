require 'rails_helper'

RSpec.describe 'search' do
  it 'index' do
    visit root_path

    select 'Turing', from: 'location'
    click_on 'Find Nearest Station'

    expect(current_path).to eq(search_path)
  end
end
