require 'spec_helper'

describe "topics/edit.html.erb" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :new_record? => false
    ))
  end

  it "renders the edit topic form" do
    render

    rendered.should have_selector("form", :action => topic_path(@topic), :method => "post") do |form|
    end
  end
end
