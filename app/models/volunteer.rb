# == Schema Information
#
# Table name: volunteers
#
#  id                  :integer          not null, primary key
#  birth_at            :date
#  gender              :integer
#  day_availability    :integer
#  period_availability :integer
#  volunteered         :boolean
#  cpf                 :string
#  rg                  :string
#  verified            :boolean          default(FALSE)
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Volunteer < ApplicationRecord
  belongs_to :user, required: false
  has_many :phones, through: :user, source: :phones
  has_many :addresses, through: :user, source: :addresses

  has_many :educations, dependent: :destroy
  accepts_nested_attributes_for :educations

  has_and_belongs_to_many :skills

  enum gender: { male: 0, female: 1}
end
