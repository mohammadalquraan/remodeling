class ApplicationController < ActionController::Base
  before_action :log_request

  def log_request
    puts request.url
  end
end
