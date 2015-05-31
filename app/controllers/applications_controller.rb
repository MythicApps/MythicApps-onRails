class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    @application = Application.new
  end

  def edit
    @application = Application.find(params[:id])
  end

  def create
    @application = Application.new(application_params)

    if @application.save
      redirect_to @application
    else
      render 'new'
    end
  end

  def update
    @application = Application.find(params[:id])

    if @application.update(article_params)
      redirect_to @application
    else
      render 'edit'
    end
  end

  private
    def application_params
      params.require(:application).permit(:name, :email, :gender_identity, :school, :this_is_my_first_hackathon, :i_will_not_be_traveling_from_my_school, :i_will_be_traveling_from, :resume, :github, :dribbble, :linkedin, :personal_site, :free_response)
    end
end

# rails generate model Application name:string email:string gender_identity:string school:string this_is_my_first_hackathon:boolean i_will_not_be_traveling_from_my_school:boolean i_will_be_traveling_from:string resume:string github:string dribbble:string linkedin:string personal_site:string free_response:text
