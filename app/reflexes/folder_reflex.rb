# frozen_string_literal: true

class FolderReflex < ApplicationReflex
  def select
    folder = Folder.find(element.data_folder_id)

    if session[:selected_elements].include?(folder)
      session[:selected_elements] -= [folder]
    else
      session[:selected_elements] << folder
    end
  end

  def edit
    folder = Folder.find(element.data_folder_id)
    editing_folder = session[:editing_folder]

    session[:editing_folder] = editing_folder == folder ? nil : folder
  end

  def finish
    folder = Folder.find(element.data_folder_id)
    editing_folder = session[:editing_folder]

    session[:editing_folder] = nil if editing_folder == folder
  end

  def move(attrs)
    parent = Folder.where(id: attrs[:parent]).first
    folder = Folder.find(attrs[:folder])

    return if parent == folder

    folder.parent = parent
    folder.save
  end

  def change_name
    folder = Folder.find(element.data_folder_id)
    folder.update(name: element.value)
  end

  def delete
    Folder.find(element.data_folder_id).destroy
  end

  def sample
    Folder.create(name: FFaker::Internet.domain_word.camelcase, parent_id: element.data_folder_id)
  end
end
