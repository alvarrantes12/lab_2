require 'rails_helper'

RSpec.describe "owners/new", type: :view do
  before(:each) do
    assign(:owner, Owner.new(
      nombre: "MyString",
      apellido: "MyString",
      correo_electronico: "MyString",
      identificacion: 1
    ))
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do

      assert_select "input[name=?]", "owner[nombre]"

      assert_select "input[name=?]", "owner[apellido]"

      assert_select "input[name=?]", "owner[correo_electronico]"

      assert_select "input[name=?]", "owner[identificacion]"
    end
  end
end
