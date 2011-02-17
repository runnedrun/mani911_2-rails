class CallsController < ApplicationController
  # GET /calls
  # GET /calls.xml
  include SMSFu
  

  skip_before_filter :verify_authenticity_token

  def index
    @calls = Call.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @calls }
    end
  end

  # GET /calls/1
  # GET /calls/1.xml
  def show
    @call = Call.find(params[:id])
    @lon = @call.longitude
    @lat = @call.latitude
    @name = @call.caller.user.name
    
    respond_to do |format|
      format.html {render :layout => false }
      format.xml  { render :xml => @call }
    end
  end

  def wait_screen
    
 

  end
  
  def emergency
    call = Call.find(:first, :conditions => "status = 0")
    if not call
      redirect_to(wait_path, :notice => 'no calls right now')
      return
    end
    @id = call.id
    @instructions = Instruction.all
    #call.status = 1
  end
  
  def push_instructions
    sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)
    call = Call.find(params[:id])
    for help in call.helpers.all
      number = help.user.number
      carrier = help.user.carrier
      message = params[:instruction]
      sms_fu.deliver(number, carrier, message)
    end
  end

  def info_screen
    @call = Call.find(params[:id])
  end
    
  def local_help
    sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)
    call = Call.find(params[:id])
    for user in User.all
      number = user.number
      carrier = user.carrier
      message = "Hello #{user.name} there is an emergency at the location lat=#{call.latitude} long=#{call.longitude}.  You can safely help by following these instructions."
      sms_fu.deliver(number, carrier, message)
      help = Helper.create(:call => call)
      pushed = Pushed.create(:helper => help)
      user.helper = help
      
      
    end
    format.js
    
  end
  
  def checkfor_newcall
    to_add  = Call.find(:all, :conditions => "status = 0")
    
    format.js { @to_add = to_add }
   
  end

  def sms_test
    sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)
    number = '2406032654'
    carrier = 'sprint'
    message = 'yo wassup'
    #UserMailer.deliver_registration_confirmation(number)
    sms_fu.deliver(number, carrier, message)
    render(:text => 'sms sent!')
    return

    
  end


  # GET /calls/new
  # GET /calls/new.xml
  def get_instructions
    # send GET with params id => call id, recieve the instructions for that call
    call = Call.find(params[:id])

    return render :json => call.caller.pushed.instructions
    
  end

  def new
    @call = Call.new
   
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @call }
    end
  end

  # GET /calls/1/edit
  def edit
    @call = Call.find(params[:id])
  end

  # POST /calls
  # POST /calls.xml
  def create
    @caller = Caller.new
    @pushed = Pushed.new(:caller => @caller)
    @user = User.find(params[:call][:caller])
    params[:call].delete(:caller)
    @user.caller = @caller
   
    @call = Call.new(params[:call])
    @caller.call = @call
    @caller.save
    @user.save
    @pushed.save
    respond_to do |format|
      if @call.save
        format.html { redirect_to(@call, :notice => 'Call was successfully created.') }
        format.xml  { render :xml => @call, :status => :created, :location => @call }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @call.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /calls/1
  # PUT /calls/1.xml
  def update
    @call = Call.find(params[:id])

    respond_to do |format|page.replace_html('cart', render(@cart))

      if @call.update_attributes(params[:call])
        format.html { redirect_to(@call, :notice => 'Call was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @call.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /calls/1
  # DELETE /calls/1.xml
  def destroy
    @call = Call.find(params[:id])
    @call.destroy

    respond_to do |format|
      format.html { redirect_to(calls_url) }
      format.xml  { head :ok }
    end
  end
end
