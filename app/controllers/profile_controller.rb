class ProfileController < ApplicationController
 def index
   @current_profile = current_coordinator.profile              # Show the current logged in coordinator's Profile (Only one, because has_one relation with coordinator)
   @profile = Profile.new                                      # Initializing new object (as the form is in the index page)
 end

 def create
   @profile = current_coordinator.build_profile(profile_params)    # Associating new profile with coordinator_id in profiles table
    if @profile.save
      redirect_to dashboard_path
   else
      render 'index'
   end
 end

  private

  def profile_params
    params.require(:profile).permit(:avatar, :id)      # Permitting avatar(actual picture) attribute
  end
end
