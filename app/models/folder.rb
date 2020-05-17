class Folder < ApplicationRecord
  has_many :folders, class_name: "Folder", foreign_key: 'parent_id'
  belongs_to :parent, class_name: "Folder", foreign_key: 'parent_id', optional: true
  has_many :documents

  scope :root, lambda { where(parent_id: nil) }

  default_scope { order(name: :asc) }

  def to_s
    name
  end
end
