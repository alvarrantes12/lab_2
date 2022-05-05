require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        name: "Name",
        lineage: "Lineage",
        pedigree: false
      ),
      Pet.create!(
        name: "Name",
        lineage: "Lineage",
        pedigree: false
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Lineage".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
