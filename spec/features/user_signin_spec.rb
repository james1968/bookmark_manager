require 'spec_helper'


feature 'signing in' do

let!(:user) do
  User.create(email: 'alice@example.com', password: '12345678', password_confirmation: '12345678')
end

  scenario 'a user can sign in' do
    sign_in
    expect(page).to have_content("Hello #{user.email}")
  end

  it 'does not authenticate when given an incorrect password' do
    expect(User.authenticate(user.email, 'wrong')).to be_nil
  end

end
