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
require 'rails_helper'

RSpec.describe Tenureship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
