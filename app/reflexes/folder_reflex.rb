# frozen_string_literal: true

class FolderReflex < ApplicationReflex

  def select_folder
    @selected_folder = Folder.find(element.dataset[:id])
    @selected_document = nil
  end

  def select_document
    @selected_document = Document.find(element.dataset[:id])
    @selected_folder = nil
  end
end
