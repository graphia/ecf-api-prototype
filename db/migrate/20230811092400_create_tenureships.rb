class CreateTenureships < ActiveRecord::Migration[7.0]
  def change
    create_table :tenureships do |t|
      t.integer :teacher_id
      t.integer :school_id
      t.date :started_on
      t.date :finished_on

      t.timestamps
    end
  end
end
