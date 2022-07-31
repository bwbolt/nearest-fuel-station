require 'rails_helper'

RSpec.describe 'search' do
  it 'index' do
    visit root_path

    select 'Turing', from: 'location'
    click_on 'Find Nearest Station'

    expect(current_path).to eq(search_path)

    expect(page).to have_content 'Name: CBRE As Agent for EQC Operating Trust'
    expect(page).to have_content 'Address: 1225 17th Street, Suite 130, Denver, CO'
    expect(page).to have_content 'Fuel Type: ELEC'
    expect(page).to have_content 'Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified'
  end
end
