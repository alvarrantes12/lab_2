require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        nombre: "Nombre",
        raza: "Raza",
        pedigree: false
      ),
      Pet.create!(
        nombre: "Nombre",
        raza: "Raza",
        pedigree: false
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", text: "Nombre".to_s, count: 2
    assert_select "tr>td", text: "Raza".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
