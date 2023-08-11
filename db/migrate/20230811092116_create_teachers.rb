class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.integer :trn

      t.timestamps
    end
  end
end
