class ApplicationController < ActionController::Base
    before_action :authenticate_account!, only: [:login_check, :index,:add,:edit]

end
