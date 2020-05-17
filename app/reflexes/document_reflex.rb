# frozen_string_literal: true

class DocumentReflex < ApplicationReflex

  def edit
    document = Document.find(element.dataset[:id])
    editing_document = session[:editing_document]

    if editing_document == document
      editing_document = nil
    else
      editing_document = document
    end

    session[:editing_document] = editing_document
  end

  def finish
    document = Document.find(element.dataset[:id])
    editing_document = session[:editing_document]

    if editing_document == document
      session[:editing_document] = nil
    end
  end

  def change_name
    document = Document.find(element.dataset[:id])
    document.update(name: element[:value])
  end

  def delete
    Document.find(element.dataset[:id]).destroy
  end

  def sample
    Document.create(
      name: "#{FFaker::Internet.domain_word}.#{FFaker::Filesystem.extension}",
      folder_id: element.dataset['folder-id']
    )
  end
end
