require 'rails_helper'

RSpec.describe "owners/index", type: :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        correoElectronico: "Correo Electronico",
        numeroId: 2
      ),
      Owner.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        correoElectronico: "Correo Electronico",
        numeroId: 2
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", text: "Nombre".to_s, count: 2
    assert_select "tr>td", text: "Apellido".to_s, count: 2
    assert_select "tr>td", text: "Correo Electronico".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
