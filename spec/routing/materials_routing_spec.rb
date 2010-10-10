require "spec_helper"

describe MaterialsController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/materials" }.should route_to(:controller => "materials", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/materials/new" }.should route_to(:controller => "materials", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/materials/1" }.should route_to(:controller => "materials", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/materials/1/edit" }.should route_to(:controller => "materials", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/materials" }.should route_to(:controller => "materials", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/materials/1" }.should route_to(:controller => "materials", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/materials/1" }.should route_to(:controller => "materials", :action => "destroy", :id => "1")
    end

  end
end
