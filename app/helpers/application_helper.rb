module ApplicationHelper
  include Pagy::Frontend

  def active_class(target_controllers)
    target_controllers.include?(params[:controller]) ? 'active' : ''
  end
end
