require 'spec_helper'

describe "topics/index.html.erb" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic),
      stub_model(Topic)
    ])
  end

  it "renders a list of topics" do
    render
  end
end
