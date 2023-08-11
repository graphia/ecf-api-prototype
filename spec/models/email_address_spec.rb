# == Schema Information
#
# Table name: email_addresses
#
#  id         :bigint           not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  teacher_id :integer
#
# Foreign Keys
#
#  fk_rails_...  (teacher_id => teachers.id)
#
require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
