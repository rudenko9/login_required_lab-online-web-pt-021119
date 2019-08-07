class SessionsController < ApplicationController
  
  def new 
    
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
