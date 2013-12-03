class WelcomeController < ApplicationController
  skip_filter :authenticate_user!, only: [:index]
  def index
    @project = Project.random(current_user)
  end
end
