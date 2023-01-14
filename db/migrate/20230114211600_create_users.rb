class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.date :start_date
      t.string :email
      t.string :phone_number
      t.integer :login_id

      t.timestamps
    end
  end
end
