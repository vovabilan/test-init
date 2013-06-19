class WelcomeController < ApplicationController
  PER_PAGE = 10

  def index
    @companies = Company.order("name").page(params[:page]).per(PER_PAGE)

    User.order("created_at DESC")
  end
end
