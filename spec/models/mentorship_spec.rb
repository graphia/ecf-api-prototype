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
require 'rails_helper'

RSpec.describe Mentorship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
