describe 'entering names' , type: :feature do
  it 'allows user to enter their names' do
    visit ('/')
    fill_in('Player1', with: 'John')
    fill_in('Player2', with: 'Smith' )
    click_button('Start!')
    expect(page).to have_content 'John vs Smith'
  end
end