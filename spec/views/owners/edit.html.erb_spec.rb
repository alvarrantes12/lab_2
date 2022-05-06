require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      nombre: "MyString",
      apellido: "MyString",
      correoElectronico: "MyString",
      numeroId: 1
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input[name=?]", "owner[nombre]"

      assert_select "input[name=?]", "owner[apellido]"

      assert_select "input[name=?]", "owner[correoElectronico]"

      assert_select "input[name=?]", "owner[numeroId]"
    end
  end
end
