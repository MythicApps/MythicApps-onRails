class ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @application = model
  end

  def show?
    @current_user.admin? or @current_user.email == @application.email
  end

  def update?
    @current_user.admin? or @current_user.email == @application.email
  end

  def edit?
    @current_user.admin? or @current_user.email == @application.email
  end

end
