# == Schema Information
#
# Table name: induction_periods
#
#  id                     :bigint           not null, primary key
#  finished_on            :date
#  started_on             :date             not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  appropriate_body_id    :integer          not null
#  induction_programme_id :integer          not null
#  mentorship_id          :integer          not null
#
class InductionPeriod < ApplicationRecord
end
