class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize
    # get "admin"
  def index
    @users = User.all
  end

  # put/patch "admin/:id"
  def update
    user = User.find(params[:id])
    user.roles.destroy_all # user only has one role
    user.add_role(params[:role])
    redirect_to '/admin/index'
  end

  private

  def authorize
    if !current_user.has_role? :admin
      render text:"No access for you!"
    end
  end
end
