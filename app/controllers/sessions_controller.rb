class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    
=begin
    if (user.nil? == false) 
        if user.authenticate(params[:password]) 
          puts user.authenticate(params[:password])
          puts "NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN Batman!"
          session[:user_id] = user.id
          flash[:success] = "Thanks for logging in!"
          redirect_to :controller => 'trips'
        else 
          puts user.authenticate(params[:password])
          puts "waka waka waka waka waka waka waka waka waka waka waka waka waka waka waka waka"
          flash[:error] = "There was an error logging in. Please check your email and password"
          render action: "new"
        end
      else
        flash[:error] = "There was an error logging in. Please check your email and password"
        render action: "new"
      end
=end
  
#    if user && user.authenticate(params[:password])
      
      if user
        redirect_to :controller => 'welcome', :id => user.id
#      log_in user

#      redirect_to :controller => 'trips', :id => user.id
  
    else
      
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
      
      
  end
    
    
    
  




  def destroy
  end
  
end
