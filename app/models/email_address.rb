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
class EmailAddress < ApplicationRecord
end
