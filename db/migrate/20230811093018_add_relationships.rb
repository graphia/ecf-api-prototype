class AddRelationships < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :email_addresses, :teachers

    add_foreign_key :mentorships, :teachers
    add_foreign_key :mentorships, :tenureships

    add_foreign_key :schools, :schools, column: :parent_id, primary_key: :id

    add_foreign_key :tenureships, :teachers
    add_foreign_key :tenureships, :schools

    add_foreign_key :induction_periods, :mentorships
    add_foreign_key :induction_periods, :appropriate_bodies
    add_foreign_key :induction_periods, :induction_programmes
  end
end
