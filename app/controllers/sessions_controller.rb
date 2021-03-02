class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to new_session_path if !params[:name] || params[:name] == ''
    #binding.pry
    session[:name] = params[:name]
  end

  def destroy
    reset_session
  end

end
