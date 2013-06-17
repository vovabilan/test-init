class WelcomeController < ApplicationController
  def index
    @companies = Company.order("name").page(params[:page]).per(10)
  end
end
