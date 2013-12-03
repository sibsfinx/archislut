class WelcomeController < ApplicationController
  skip_filter :authenticate_user!, only: [:index]
  def index
    if current_user.present?
      @project = Project.random(current_user).first
    else
      render :guest
    end
  end

  def guest
  end

end
