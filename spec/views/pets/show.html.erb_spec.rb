require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      nombre: "Nombre",
      raza: "Raza",
      pedigree: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Raza/)
    expect(rendered).to match(/false/)
  end
end
