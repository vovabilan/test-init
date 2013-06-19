class CompaniesController < ApplicationController
  def index
    @search = Company.search do
      fulltext params[:search]
      facet(:address)
    end
    @companies = @search.results
    render 'welcome/index'
  end

  def new
    @company = Company.new
  end

  def update

    if @company.update_attributes company_params
      redirect_to companies_path(@company)
    else
      render :edit
    end
  end

  def create
    @company = Company.new company_params

    if @company.valid?
      @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  def destroy
    if @company
      @company.delete
    end
    redirect_to companies_path
  end

  protected

  def find_company
    @company = Company.find params[:id]
  end

  private
    def company_params
      params.require(:company).permit(:name, :email, :phone, :address)
    end
end
