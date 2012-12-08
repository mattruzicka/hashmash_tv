class EmailsController < ApplicationController
 
  def save
    email = Email.new(email: params[:email]) 
    if email.save
      redirect_to '/tags/success'
    else
      redirect_to '/tags/fail'
    end
  end
   
end