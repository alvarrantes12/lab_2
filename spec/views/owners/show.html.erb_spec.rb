require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      first_name: "First Name",
      last_name: "Last Name",
      email: "Email",
      personal_number: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
  end
end
