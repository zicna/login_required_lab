class SessionsController < ApplicationController
  before_action :current_user
  def new
  end

  def create
    if !params[:name] || params[:name] == ''
      redirect_to '/sessions/new'
    else
      session[:name] = 
      params[:name]
    end
  end

  def destroy
    session.delete :name
  end

  
  
end
