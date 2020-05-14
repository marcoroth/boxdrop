class HomeController < ApplicationController
  def index
    @folders = Folder.root

    @selected_folder = session[:selected_folder] ||= nil
    @editing_document = session[:editing_document] ||= nil
    @editing_folder = session[:editing_folder] ||= nil
    @selected_elements = session[:selected_elements] ||= []
  end
end
