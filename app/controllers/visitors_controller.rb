class VisitorsController < ApplicationController
  def index
    @omit_home = true
    if user_signed_in?
      @application = Application.find_by email: current_user.email
      if  @application.blank?
        @application = Application.new
      end
    else
      @application = Application.new
    end
  end

  def countdown

  end

end
