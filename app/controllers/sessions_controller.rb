class SessionsController < ApplicationController
   before_action :require_login
   
  def new 
    render :login
  end  
  
   def create
        session[:username] = params[:username]
        redirect_to '/'
    end
    
    private
 
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
    
end
