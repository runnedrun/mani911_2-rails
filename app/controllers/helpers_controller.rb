class HelpersController < ApplicationController
  # GET /helpers
  # GET /helpers.xml
  def index
    @helpers = Helper.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @helpers }
    end
  end

  # GET /helpers/1
  # GET /helpers/1.xml
  def show
    @helper = Helper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @helper }
    end
  end

  # GET /helpers/new
  # GET /helpers/new.xml
  def new
    @helper = Helper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @helper }
    end
  end

  # GET /helpers/1/edit
  def edit
    @helper = Helper.find(params[:id])
  end

  # POST /helpers
  # POST /helpers.xml
  def create
    @helper = Helper.new(params[:helper])

    respond_to do |format|
      if @helper.save
        format.html { redirect_to(@helper, :notice => 'Helper was successfully created.') }
        format.xml  { render :xml => @helper, :status => :created, :location => @helper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @helper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /helpers/1
  # PUT /helpers/1.xml
  def update
    @helper = Helper.find(params[:id])

    respond_to do |format|
      if @helper.update_attributes(params[:helper])
        format.html { redirect_to(@helper, :notice => 'Helper was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @helper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /helpers/1
  # DELETE /helpers/1.xml
  def destroy
    @helper = Helper.find(params[:id])
    @helper.destroy

    respond_to do |format|
      format.html { redirect_to(helpers_url) }
      format.xml  { head :ok }
    end
  end
end
