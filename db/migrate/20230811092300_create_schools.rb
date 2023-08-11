class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.integer :parent_id

      t.timestamps
    end
  end
end
