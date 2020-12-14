# frozen_string_literal: true

class Folder < ApplicationRecord
  belongs_to :parent, class_name: 'Folder', optional: true
  has_many :folders, class_name: 'Folder', foreign_key: 'parent_id', dependent: :delete_all, inverse_of: :parent
  has_many :documents, dependent: :delete_all

  default_scope { order(name: :asc) }
  scope :root, -> { where(parent_id: nil) }

  def to_s
    name
  end
end
