class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # TODO figure out how to deal with CSRF from react native app
  # protect_from_forgery with: :null_session
end
