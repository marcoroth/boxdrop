# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :folder, optional: true

  default_scope { order(name: :asc) }
  scope :root, -> { where(folder_id: nil) }

  def to_s
    name
  end
end
