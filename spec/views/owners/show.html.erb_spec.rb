require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      name: "Name",
      last_name: "Last Name",
      e_mail: "E Mail",
      personal_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/E Mail/)
    expect(rendered).to match(/2/)
  end
end
