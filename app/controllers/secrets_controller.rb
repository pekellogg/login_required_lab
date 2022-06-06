class SecretsController < ApplicationController
  def new
  end
  
  def show
    current_user ? render(:show) : require_login
  end
end