require 'rails_helper'

RSpec.describe "create_owners/edit", type: :view do
  before(:each) do
    @create_owner = assign(:create_owner, CreateOwner.create!(
      nombre: "MyString",
      apellido: "MyString",
      correo: "MyString",
      numeroIdentificacion: 1
    ))
  end

  it "renders the edit create_owner form" do
    render

    assert_select "form[action=?][method=?]", create_owner_path(@create_owner), "post" do

      assert_select "input[name=?]", "create_owner[nombre]"

      assert_select "input[name=?]", "create_owner[apellido]"

      assert_select "input[name=?]", "create_owner[correo]"

      assert_select "input[name=?]", "create_owner[numeroIdentificacion]"
    end
  end
end
