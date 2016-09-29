# spec/requests/api/v1/messages_spec.rb
describe "Users API" do
  it 'sends a list of users' do
    FactoryGirl.create_list(:users, 10)

    get '/api/v1/users'

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success
  end
end