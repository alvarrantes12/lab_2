require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      personal_number: 1
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input[name=?]", "owner[first_name]"

      assert_select "input[name=?]", "owner[last_name]"

      assert_select "input[name=?]", "owner[email]"

      assert_select "input[name=?]", "owner[personal_number]"
    end
  end
end
