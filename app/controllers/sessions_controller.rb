class SessionsController < ApplicationController
  def new
  end

  def create
    valid_name_in_params? ? login : require_login
  end

  def destroy
    session.delete(:name) if current_user
    redirect_to(login_path)
  end

  private

  def session_params
    params.permit(:name)
  end
end