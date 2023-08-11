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
class School < ApplicationRecord
end
