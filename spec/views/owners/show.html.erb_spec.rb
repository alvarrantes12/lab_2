require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
