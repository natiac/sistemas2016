class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  layout 'admin_lte_2'

   def user_for_paper_trail
    user_signed_in? ? current_user.id : 'Public user'  # or whatever
  end


end
