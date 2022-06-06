class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  def valid_name_in_params?
    if session_params[:name]
      session_params[:name].is_a?(String) && !session_params[:name].empty?
    else
      false
    end
  end

  def login
    session[:name] = session_params[:name]
  end

  def current_user
    session[:name]
  end

  def require_login
    return redirect_to(login_path) if current_user.nil?
  end

end
