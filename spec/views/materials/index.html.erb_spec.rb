require 'spec_helper'

describe "materials/index.html.erb" do
  before(:each) do
    assign(:materials, [
      stub_model(Material),
      stub_model(Material)
    ])
  end

  it "renders a list of materials" do
    render
  end
end
