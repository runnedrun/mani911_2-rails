class PushedsController < ApplicationController
  # GET /pusheds
  # GET /pusheds.xml
  def index
    @pusheds = Pushed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pusheds }
    end
  end

  # GET /pusheds/1
  # GET /pusheds/1.xml
  def show
    @pushed = Pushed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pushed }
    end
  end

  # GET /pusheds/new
  # GET /pusheds/new.xml
  def new
    @pushed = Pushed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pushed }
    end
  end

  # GET /pusheds/1/edit
  def edit
    @pushed = Pushed.find(params[:id])
  end

  # POST /pusheds
  # POST /pusheds.xml
  def create
    @pushed = Pushed.new(params[:pushed])

    respond_to do |format|
      if @pushed.save
        format.html { redirect_to(@pushed, :notice => 'Pushed was successfully created.') }
        format.xml  { render :xml => @pushed, :status => :created, :location => @pushed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pushed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pusheds/1
  # PUT /pusheds/1.xml
  def update
    @pushed = Pushed.find(params[:id])

    respond_to do |format|
      if @pushed.update_attributes(params[:pushed])
        format.html { redirect_to(@pushed, :notice => 'Pushed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pushed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pusheds/1
  # DELETE /pusheds/1.xml
  def destroy
    @pushed = Pushed.find(params[:id])
    @pushed.destroy

    respond_to do |format|
      format.html { redirect_to(pusheds_url) }
      format.xml  { head :ok }
    end
  end
end
