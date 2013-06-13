class WelcomeController < ApplicationController
  def index
    @companies = Company.all

    @search = Welcome.search do
      fulltext params[:search]
      with(:phone)
      facet(:address)
    end
    @welcome = @search.results
  end
end
