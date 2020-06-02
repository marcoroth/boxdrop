# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_layout

  private

  def set_layout
    session[:layout] ||= 'list'
  end
end
