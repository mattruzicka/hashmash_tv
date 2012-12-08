class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :ensure_domain if Rails.env.production?

  def ensure_domain 
    domain = 'www.hashmash.tv'

    if request.host != domain 
      redirect_to request.protocol + domain
    end
  end
end
