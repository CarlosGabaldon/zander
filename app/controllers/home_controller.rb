class HomeController < ApplicationController
  
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses }
    end
  end
  
end
