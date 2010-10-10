require 'spec_helper'

describe "materials/new.html.erb" do
  before(:each) do
    assign(:material, stub_model(Material,
      :new_record? => true
    ))
  end

  it "renders new material form" do
    render

    rendered.should have_selector("form", :action => materials_path, :method => "post") do |form|
    end
  end
end
