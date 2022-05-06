require 'rails_helper'

RSpec.describe "create_owners/show", type: :view do
  before(:each) do
    @create_owner = assign(:create_owner, CreateOwner.create!(
      nombre: "Nombre",
      apellido: "Apellido",
      correo: "Correo",
      numeroIdentificacion: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apellido/)
    expect(rendered).to match(/Correo/)
    expect(rendered).to match(/2/)
  end
end
