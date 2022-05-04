require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      nombre: "MyString",
      apellido: "MyString",
      correo_electronico: "MyString",
      identificacion: 1
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input[name=?]", "owner[nombre]"

      assert_select "input[name=?]", "owner[apellido]"

      assert_select "input[name=?]", "owner[correo_electronico]"

      assert_select "input[name=?]", "owner[identificacion]"
    end
  end
end
