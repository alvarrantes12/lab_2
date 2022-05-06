require 'rails_helper'

RSpec.describe "owners/index", type: :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(),
      Owner.create!()
    ])
  end

  it "renders a list of owners" do
    render
  end
end
