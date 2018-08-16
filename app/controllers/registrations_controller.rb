class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registrations_params)
     if @registration.save
       redirect_to root_path
     else
       render 'new'
     end
  end

  private

   def registrations_params
     params.require(:registration).permit(:name, :email, :section)
   end
end
