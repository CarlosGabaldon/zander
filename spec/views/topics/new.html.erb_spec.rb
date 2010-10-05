require 'spec_helper'

describe "topics/new.html.erb" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :new_record? => true
    ))
  end

  it "renders new topic form" do
    render

    rendered.should have_selector("form", :action => topics_path, :method => "post") do |form|
    end
  end
end
