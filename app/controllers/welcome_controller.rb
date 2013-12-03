class WelcomeController < ApplicationController
  skip_filter :authenticate_member!, only: [:index]
  def index
  end
end
