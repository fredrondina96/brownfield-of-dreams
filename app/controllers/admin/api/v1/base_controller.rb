class Admin::Api::V1::BaseController < ActionController::API
  before_action :require_admin!

  def require_admin!
    four_oh_four unless current_user.admin?
  end
end
