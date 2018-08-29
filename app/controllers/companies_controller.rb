class CompaniesController < ApplicationController
  before_action :find_company, only: [:show :edit ]
  def new
    @company = Company.new(company_params)
  end
def create
    @company.user_id = current_user.id
    @company = Company.new(company_params)
  if @company.save
    redirect_to @company
  else
    render 'new'
  end

  def show
    @company = Company.find(params[:id])
  eend

  def index
    @company = Company.where(user_id: current_user.id)
  end

  def company_params
params.require(:company).permit(:name, :industry)
    end

def find_company
  @company = Company.find(params[:id])
end

end
