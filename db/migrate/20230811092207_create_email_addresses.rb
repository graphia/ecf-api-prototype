class CreateEmailAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :email_addresses do |t|
      t.string :email
      t.integer :teacher_id

      t.timestamps
    end
  end
end
