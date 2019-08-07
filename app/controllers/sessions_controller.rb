class SessionsController < ApplicationController
   before_action :require_login
   
  def new 
    render :login
  end  
  
   def create
        
    
    private
 
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
    
end
