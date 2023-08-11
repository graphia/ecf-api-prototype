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
require 'rails_helper'

RSpec.describe Teacher, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
