class ApplicationsController < ApplicationController
  respond_to :html, :js
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, :only => [:index,:edit,:update,:show,:review]

  def index
    authorize User
    @applications = Application.all
  end

  def show
	@application = Application.find(params[:app_id])
    authorize @application
  end

  def new
    @application = Application.new
  end
  
  def review
	@application = Application.find_by status: 0
	if @application != nil
	  authorize @application
	end
    
  end

  def edit
	@application = Application.find(params[:id])
    authorize @application
  end

  def create
    @application = Application.new(application_params)

    if @application.save
      userAccount = User.new({:email => application_params[:email], :role => 'user'})
      userAccount.save

      render 'show'
    else
      render 'new'
    end
  end

  def update
    @application = Application.find(params[:id])

    if @application.update(application_params)
      render 'update'
    else
      render 'edit'
    end
  end

  private
    def application_params
      params.require(:application).permit(:name, :email, :gender_identity, :school, :this_is_my_first_hackathon, :i_will_not_be_traveling_from_my_school, :i_will_be_traveling_from, :resume, :github, :dribbble, :linkedin, :personal_site, :free_response, :status)
    end
end

# rails generate model Application name:string email:string gender_identity:string school:string this_is_my_first_hackathon:boolean i_will_not_be_traveling_from_my_school:boolean i_will_be_traveling_from:string resume:string github:string dribbble:string linkedin:string personal_site:string free_response:text
