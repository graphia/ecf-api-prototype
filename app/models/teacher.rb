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
end
