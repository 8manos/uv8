class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'rails_autolink'
  require "sinatra"
  require "instagram"
end
