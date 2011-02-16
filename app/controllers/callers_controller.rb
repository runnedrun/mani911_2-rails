class CallersController < ApplicationController
  # GET /callers
  # GET /callers.xml
  def index
    @callers = Caller.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @callers }
    end
  end

  # GET /callers/1
  # GET /callers/1.xml
  def show
    @caller = Caller.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caller }
    end
  end

  # GET /callers/new
  # GET /callers/new.xml
  def new
    @caller = Caller.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caller }
    end
  end

  # GET /callers/1/edit
  def edit
    @caller = Caller.find(params[:id])
  end

  # POST /callers
  # POST /callers.xml
  def create
    @caller = Caller.new(params[:caller])

    respond_to do |format|
      if @caller.save
        format.html { redirect_to(@caller, :notice => 'Caller was successfully created.') }
        format.xml  { render :xml => @caller, :status => :created, :location => @caller }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /callers/1
  # PUT /callers/1.xml
  def update
    @caller = Caller.find(params[:id])

    respond_to do |format|
      if @caller.update_attributes(params[:caller])
        format.html { redirect_to(@caller, :notice => 'Caller was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /callers/1
  # DELETE /callers/1.xml
  def destroy
    @caller = Caller.find(params[:id])
    @caller.destroy

    respond_to do |format|
      format.html { redirect_to(callers_url) }
      format.xml  { head :ok }
    end
  end
end
