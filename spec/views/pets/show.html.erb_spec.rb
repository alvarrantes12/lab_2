require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      name: "Name",
      lineage: "Lineage",
      pedigree: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Lineage/)
    expect(rendered).to match(/false/)
  end
end
