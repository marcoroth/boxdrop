class DocumentsController < ApplicationController
  helper FolderHelper

  def show
    @document = Document.find(params[:id])
  end
end
