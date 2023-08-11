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
end
