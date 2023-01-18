class SessionsController < ApplicationController
  def new
  end

  def create
    login = Login.find_by(username: params[:session][:login])
    if login && login.authenticate(params[:session][:password])
          # Wszystko dobrze, logujemy
          log_in login
          redirect_to login
    else
          # Niedobrze
          render 'new'
    end
  end
end
