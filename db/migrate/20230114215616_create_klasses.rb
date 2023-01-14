class CreateKlasses < ActiveRecord::Migration[7.0]
  def change
    create_table :klasses do |t|
      t.date :klass_date
      t.string :subject
      t.string :subject_level
      t.string :status
      t.integer :tutor_id
      t.integer :user_id

      t.timestamps
    end
  end
end
