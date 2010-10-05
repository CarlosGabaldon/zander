require 'spec_helper'

describe "topics/show.html.erb" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic))
  end

  it "renders attributes in <p>" do
    render
  end
end
