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
class Tenureship < ApplicationRecord
end
