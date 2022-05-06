require 'rails_helper'

RSpec.describe "create_owners/new", type: :view do
  before(:each) do
    assign(:create_owner, CreateOwner.new(
      nombre: "MyString",
      apellido: "MyString",
      correo: "MyString",
      numeroIdentificacion: 1
    ))
  end

  it "renders new create_owner form" do
    render

    assert_select "form[action=?][method=?]", create_owners_path, "post" do

      assert_select "input[name=?]", "create_owner[nombre]"

      assert_select "input[name=?]", "create_owner[apellido]"

      assert_select "input[name=?]", "create_owner[correo]"

      assert_select "input[name=?]", "create_owner[numeroIdentificacion]"
    end
  end
end
