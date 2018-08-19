class ApplicationController < ActionController::Base
  before_action :authenticate_coordinator!, except: [:index, :show]
end
