# frozen_string_literal: true

class DocumentReflex < ApplicationReflex
  def select
    document = Document.find(element.data_document_id)

    if session[:selected_elements].include?(document)
      session[:selected_elements] -= [document]
    else
      session[:selected_elements] << document
    end
  end

  def edit
    document = Document.find(element.data_document_id)
    editing_document = session[:editing_document]

    session[:editing_document] = editing_document == document ? nil : document
  end

  def finish
    document = Document.find(element.data_document_id)
    editing_document = session[:editing_document]

    session[:editing_document] = nil if editing_document == document
  end

  def move(attrs)
    folder = Folder.where(id: attrs[:folder]).first
    document = Document.find(attrs[:document])

    document.folder = folder
    document.save
  end

  def change_name
    document = Document.find(element.data_document_id)
    document.update(name: element.value)
  end

  def delete
    Document.find(element.data_document_id).destroy
  end

  def sample
    Document.create(
      name: "#{FFaker::Internet.domain_word}.#{FFaker::Filesystem.extension}",
      folder_id: element.data_folder_id
    )
  end
end
