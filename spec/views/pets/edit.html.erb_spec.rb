require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      name: "MyString",
      breed: "MyString",
      pedigree: false
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[breed]"

      assert_select "input[name=?]", "pet[pedigree]"
    end
  end
end
