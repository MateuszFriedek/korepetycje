class AddIndexToLoginsUsername < ActiveRecord::Migration[7.0]
  def change
    add_index :logins, :username, unique: true
  end
end
