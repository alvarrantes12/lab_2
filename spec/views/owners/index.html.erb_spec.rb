require 'rails_helper'

RSpec.describe "owners/index", type: :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        name: "Name",
        last_name: "Last Name",
        email: "Email",
        identification_number: "Identification Number"
      ),
      Owner.create!(
        name: "Name",
        last_name: "Last Name",
        email: "Email",
        identification_number: "Identification Number"
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Identification Number".to_s, count: 2
  end
end
