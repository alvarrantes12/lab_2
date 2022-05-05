require 'rails_helper'

RSpec.describe "owners/index", type: :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        personal_number: 2
      ),
      Owner.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        personal_number: 2
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
