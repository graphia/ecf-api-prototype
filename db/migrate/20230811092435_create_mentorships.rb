class CreateMentorships < ActiveRecord::Migration[7.0]
  def change
    create_table :mentorships do |t|
      t.integer :teacher_id
      t.integer :tenureship_id

      t.timestamps
    end
  end
end
