class FoldersController < ApplicationController
  before_action :set_folders_and_documents

  def index
    @folders = Folder.root
    @documents = Document.root
  end

  def show
    @folder = Folder.find(params[:id])
    @folders = @folder.folders
    @documents = @folder.documents
  end

  private

  def set_folders_and_documents
    @selected_folder = session[:selected_folder] ||= nil
    @editing_folder = session[:editing_folder] ||= nil
    @editing_document = session[:editing_document] ||= nil
    @selected_elements = session[:selected_elements] ||= []
  end
end
