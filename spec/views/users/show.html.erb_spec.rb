require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :owner_name => "Owner Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Owner Name/)
  end
end
