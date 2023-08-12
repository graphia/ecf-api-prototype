# == Schema Information
#
# Table name: tenureships
#
#  id          :bigint           not null, primary key
#  finished_on :date
#  started_on  :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  school_id   :integer
#  teacher_id  :integer
#
# Foreign Keys
#
#  fk_rails_...  (school_id => schools.id)
#  fk_rails_...  (teacher_id => teachers.id)
#
class Tenureship < ApplicationRecord
  belongs_to :teacher
  belongs_to :school
  has_many :mentorships

  scope :current, -> { where(finished_on: nil) }
end
