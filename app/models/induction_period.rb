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
# Foreign Keys
#
#  fk_rails_...  (appropriate_body_id => appropriate_bodies.id)
#  fk_rails_...  (induction_programme_id => induction_programmes.id)
#  fk_rails_...  (mentorship_id => mentorships.id)
#
class InductionPeriod < ApplicationRecord
  belongs_to :mentorship
  belongs_to :appropriate_body
  belongs_to :induction_programme
end
