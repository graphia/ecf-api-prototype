class CreateInductionPeriods < ActiveRecord::Migration[7.0]
  def change
    create_table :induction_periods do |t|
      t.integer :mentorship_id, null: false
      t.integer :appropriate_body_id, null: false
      t.integer :induction_programme_id, null: false

      t.date :started_on, null: false
      t.date :finished_on

      t.timestamps
    end
  end
end
