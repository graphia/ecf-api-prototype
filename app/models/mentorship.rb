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
class Mentorship < ApplicationRecord
end
