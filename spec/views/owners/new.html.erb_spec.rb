require 'rails_helper'

RSpec.describe "owners/new", type: :view do
  before(:each) do
    assign(:owner, Owner.new())
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do
    end
  end
end
