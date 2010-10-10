require 'spec_helper'

describe "materials/show.html.erb" do
  before(:each) do
    @material = assign(:material, stub_model(Material))
  end

  it "renders attributes in <p>" do
    render
  end
end
