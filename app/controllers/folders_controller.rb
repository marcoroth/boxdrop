class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def show
    @folder = Folder.find(params[:id])
    @folders = @folder.folders
    @documents = @folder.documents

    @selected_folder = session[:selected_folder] ||= nil
    @editing_folder = session[:editing_folder] ||= nil
    @editing_document = session[:editing_document] ||= nil
    @selected_elements = session[:selected_elements] ||= []
  end
end
