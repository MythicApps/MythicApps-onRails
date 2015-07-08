class VisitorsController < ApplicationController
  def index
    @application = Application.new
    @omit_home = true
  end

  def countdown

  end

end
