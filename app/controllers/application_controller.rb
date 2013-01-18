class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private
  	def current_locker
  		Locker.find(current_user.id)
  	rescue ActiveRecord::RecordNotFound
  		locker = Locker.new
  		locker.user_id = current_user.id
  		locker.save
  		locker
  	end

  	Warden::Manager.after_authentication do |user, auth, opts|
    if user.locker.nil?
      	locker = Locker.new
      		locker.user_id = user.id
      		locker.save
    	end
  	end

end
