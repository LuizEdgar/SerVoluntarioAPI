# == Schema Information
#
# Table name: skills
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string
#  image_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Skill, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
