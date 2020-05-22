# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :folder, optional: true

  scope :root, -> { where(folder_id: nil) }

  default_scope { order(name: :asc) }

  def to_s
    name
  end
end
