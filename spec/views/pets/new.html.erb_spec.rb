require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      nombre: "MyString",
      raza: "MyString",
      pedigree: false
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input[name=?]", "pet[nombre]"

      assert_select "input[name=?]", "pet[raza]"

      assert_select "input[name=?]", "pet[pedigree]"
    end
  end
end
