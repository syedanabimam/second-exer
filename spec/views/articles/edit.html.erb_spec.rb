require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :name => "MyString",
      :price => "MyString",
      :description => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "input#article_price[name=?]", "article[price]"

      assert_select "textarea#article_description[name=?]", "article[description]"

      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
