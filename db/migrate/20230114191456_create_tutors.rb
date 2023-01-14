class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.date :start_date
      t.string :subject
      t.string :location
      t.string :description
      t.string :degree
      t.string :email
      t.string :phone_number
      t.integer :login_id

      t.timestamps
    end
  end
end
