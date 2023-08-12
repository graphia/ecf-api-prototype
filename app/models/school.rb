# == Schema Information
#
# Table name: schools
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :integer
#
# Foreign Keys
#
#  fk_rails_...  (parent_id => schools.id)
#
class School < ApplicationRecord
  # naming could be better here, avoiding parent/children for obvious reasons
  belongs_to :mat, class_name: 'School', foreign_key: 'parent_id', optional: true
  has_many :schools, class_name: 'School', foreign_key: 'parent_id'
  has_many :tenureships
  has_many :teachers, through: :tenureships, source: :teacher

  has_many :mentorships_as_mentee,
           through: :tenureships,
           source: :mentorships,
           class_name: 'Mentorship'

  has_many :mentorships_as_mentor,
           through: :teachers,
           source: :mentorships_as_mentor,
           class_name: 'Mentorship'
end
