require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      name: "MyString",
      last_name: "MyString",
      email: "MyString",
      identification_number: "MyString"
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input[name=?]", "owner[name]"

      assert_select "input[name=?]", "owner[last_name]"

      assert_select "input[name=?]", "owner[email]"

      assert_select "input[name=?]", "owner[identification_number]"
    end
  end
end
