class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def update

    if @company.update_attributes params[:company]
      redirect_to companies_path(@company)
    else
      render :edit
    end
  end

  def create
    @company = Company.new params[:company]

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
      params.require(:company).permit(:name, :email)
    end
end
