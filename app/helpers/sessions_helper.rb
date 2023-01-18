module SessionsHelper

  def log_in(login)
    session[:login_id] = login.id
  end

  def current_login
    @current_login ||= Login.find_by(id: session[:login_id])
  end

  def logged_in?
    !current_login.nil?
  end

  def log_out
    session.delete(:login_id)
    @current_login = nil
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
