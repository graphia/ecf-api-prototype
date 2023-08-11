class CreateInductionProgrammes < ActiveRecord::Migration[7.0]
  def change
    create_table :induction_programmes do |t|

      t.timestamps
    end
  end
end
