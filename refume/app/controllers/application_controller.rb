class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include MatchesHelper
  include AccountActivationsHelper
end
