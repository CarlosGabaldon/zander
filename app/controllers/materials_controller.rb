class MaterialsController < ApplicationController
  before_filter :load_course, :load_topic, :load_material_types
  # GET /materials
  # GET /materials.xml
  def index
    @materials = Material.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @materials }
    end
  end

  # GET /materials/1
  # GET /materials/1.xml
  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @material }
    end
  end

  # GET /materials/new
  # GET /materials/new.xml
  def new
    @material = Material.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @material }
    end
  end

  # GET /materials/1/edit
  def edit
    @material = Material.find(params[:id])
  end

  # POST /materials
  # POST /materials.xml
  def create
    @material = Material.new(params[:material])

    respond_to do |format|
      if @material.save
        @topic.materials << @material
        @topic.save
        format.html { redirect_to(course_topic_material_url(@course, @topic, @material), :notice => 'Material was successfully created.') }
        format.xml  { render :xml => @material, :status => :created, :location => @material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /materials/1
  # PUT /materials/1.xml
  def update
    @material = Material.find(params[:id])

    respond_to do |format|
      if @material.update_attributes(params[:material])
        format.html { redirect_to(@material, :notice => 'Material was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.xml
  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    respond_to do |format|
      format.html { redirect_to(materials_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def load_course
     @course = Course.find(params[:course_id])
  end
  
  def load_topic
    @topic = Topic.find(params[:topic_id])
  end
  
  def load_material_types
    @material_types = ['video', 'text', 'audio']
  end
  
end
