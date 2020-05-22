# frozen_string_literal: true

class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.bigint :folder_id, null: true, foreign_key: true

      t.timestamps
    end
  end
end
