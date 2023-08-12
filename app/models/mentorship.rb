# == Schema Information
#
# Table name: mentorships
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  teacher_id    :integer
#  tenureship_id :integer
#
# Foreign Keys
#
#  fk_rails_...  (teacher_id => teachers.id)
#  fk_rails_...  (tenureship_id => tenureships.id)
#
class Mentorship < ApplicationRecord
  belongs_to :tenureship
  belongs_to :mentor, class_name: 'Teacher', foreign_key: 'teacher_id'
  has_one :mentee, through: :tenureship, source: :teacher
  has_many :induction_periods
  has_many :induction_programmes, through: :induction_periods
end
