# == Schema Information
#
# Table name: teachers
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  trn        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Teacher < ApplicationRecord
  has_many :email_addresses
  has_many :tenureships

  has_many :mentorships_as_mentor, class_name: 'Mentorship', foreign_key: 'teacher_id'
  has_many :mentorships_as_mentee, class_name: 'Mentorship', through: :tenureships, source: :mentorships

  has_many :mentors, through: :mentorships_as_mentee, source: :mentor
  has_many :mentees, through: :mentorships_as_mentor, source: :mentee
end
