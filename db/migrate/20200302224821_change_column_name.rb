# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :remember_token, :remember_digest
  end
end
