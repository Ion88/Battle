feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Ion'
    fill_in :player_2_name, with: 'Chloe'
    click_button 'Submit'
    expect(page).to have_content 'Ion vs. Chloe'
  end
end
