require 'spec_helper'

describe "materials/edit.html.erb" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :new_record? => false
    ))
  end

  it "renders the edit material form" do
    render

    rendered.should have_selector("form", :action => material_path(@material), :method => "post") do |form|
    end
  end
end
