require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      nombre: "Nombre",
      apellido: "Apellido",
      correoElectronico: "Correo Electronico",
      numeroId: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apellido/)
    expect(rendered).to match(/Correo Electronico/)
    expect(rendered).to match(/2/)
  end
end
