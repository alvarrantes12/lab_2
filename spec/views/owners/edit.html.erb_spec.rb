require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!())
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input[name=?]", "owner[first_name]"

      assert_select "textarea[name=?]", "owner[last_name]"

      assert_select "input[name=?]", "owner[mail]"

      assert_select "textarea[name=?]", "owner[personal_id]"
    end
  end
end
