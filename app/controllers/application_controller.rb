class ApplicationController < ActionController::Base
  before_action :set_layout

  private

  def set_layout
    @layout = session[:layout] ||= 'list'
  end
end
