# frozen_string_literal: true

class FolderReflex < ApplicationReflex

  def select_folder
    folder = Folder.find(element.dataset[:id])

    if session[:selected_elements].include?(folder)
      session[:selected_elements] -= [folder]
    else
      session[:selected_elements] << folder
    end
  end

  def select_document
    document = Document.find(element.dataset[:id])

    if session[:selected_elements].include?(document)
      session[:selected_elements] -= [document]
    else
      session[:selected_elements] << document
    end
  end

  def move(attrs)
    folder = Folder.find(attrs["folder"])
    document = Document.find(attrs["document"])

    document.folder = folder
    document.save
  end


  def edit
    folder = Folder.find(element.dataset[:id])
    editing_folder = session[:editing_folder]

    if editing_folder == folder
      editing_folder = nil
    else
      editing_folder = folder
    end

    session[:editing_folder] = editing_folder
  end

  def finish
    folder = Folder.find(element.dataset[:id])
    editing_folder = session[:editing_folder]

    if editing_folder == folder
      session[:editing_folder] = nil
    end
  end

  def change_name
    folder = Folder.find(element.dataset[:id])
    folder.update(name: element[:value])
    session[:editing_folder] = nil
  end

  def create_folder
    Folder.create(name: FFaker::Internet.domain_word.camelcase, parent_id: element.dataset['folder-id'])
  end
end
