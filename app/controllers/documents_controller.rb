# frozen_string_literal: true

class DocumentsController < ApplicationController
  helper FolderHelper

  def show
    @document = Document.find(params[:id])
    @editing_document = session[:editing_document] ||= nil
  rescue StandardError
    redirect_to root_path
  end
end
