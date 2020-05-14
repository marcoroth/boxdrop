class Document < ApplicationRecord
  belongs_to :folder

  default_scope { order(name: :asc) }
end
