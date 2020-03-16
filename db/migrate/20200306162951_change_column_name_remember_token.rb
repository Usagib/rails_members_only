class ChangeColumnNameRememberToken < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :remember_digest, :remember_token
  end
end
