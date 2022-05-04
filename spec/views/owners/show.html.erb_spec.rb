require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      name: "Name",
      last_name: "Last Name",
      email: "Email",
      identification_number: "Identification Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Identification Number/)
  end
end
