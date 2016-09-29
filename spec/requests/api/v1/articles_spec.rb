describe "Messages API" do
  it 'sends a list of messages' do
    FactoryGirl.create_list(:articles, 10)

    get '/api/v1/articles'

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success
  end
end