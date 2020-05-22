# frozen_string_literal: true

class DocumentsController < ApplicationController
  helper FolderHelper

  def show
    @document = Document.find(params[:id])
    @editing_document = session[:editing_document] ||= nil
  end
end
