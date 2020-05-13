class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def show
    @folder = Folder.find(params[:id])
    @folders = @folder.folders
    @documents = @folder.documents
  end
end
