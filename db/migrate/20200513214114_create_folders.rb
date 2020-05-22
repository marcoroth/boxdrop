# frozen_string_literal: true

class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.string :name
      t.bigint :parent_id, foreign_key: true

      t.timestamps
    end
  end
end
