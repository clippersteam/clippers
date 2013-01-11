class HomeController < ApplicationController
  
  def index
    
  end
  
  def subscribe 
    gb = Gibbon.new
    list_id = gb.lists({:list_name => "Clippers"})["data"].first["id"]
    @successfully_subscribed = gb.list_subscribe({:id => list_id, :email_address => params[:email]})
    
    respond_to do |format|
      format.js
    end
  end
  
end
