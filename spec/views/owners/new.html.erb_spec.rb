require 'rails_helper'

RSpec.describe "owners/new", type: :view do
  before(:each) do
    assign(:owner, Owner.new(
      name: "MyString",
      last_name: "MyString",
      e_mail: "MyString",
      personal_id: 1
    ))
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do

      assert_select "input[name=?]", "owner[name]"

      assert_select "input[name=?]", "owner[last_name]"

      assert_select "input[name=?]", "owner[e_mail]"

      assert_select "input[name=?]", "owner[personal_id]"
    end
  end
end
