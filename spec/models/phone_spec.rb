# == Schema Information
#
# Table name: phones
#
#  id         :integer          not null, primary key
#  number     :string           not null
#  type       :integer          default(0)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Phone, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
