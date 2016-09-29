require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :owner_name => "Owner Name"
      ),
      User.create!(
        :owner_name => "Owner Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Owner Name".to_s, :count => 2
  end
end
