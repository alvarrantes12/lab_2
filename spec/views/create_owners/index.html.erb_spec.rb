require 'rails_helper'

RSpec.describe "create_owners/index", type: :view do
  before(:each) do
    assign(:create_owners, [
      CreateOwner.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        correo: "Correo",
        numeroIdentificacion: 2
      ),
      CreateOwner.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        correo: "Correo",
        numeroIdentificacion: 2
      )
    ])
  end

  it "renders a list of create_owners" do
    render
    assert_select "tr>td", text: "Nombre".to_s, count: 2
    assert_select "tr>td", text: "Apellido".to_s, count: 2
    assert_select "tr>td", text: "Correo".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
