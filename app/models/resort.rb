# == Schema Information
#
# Table name: resorts
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  region     :text
#  homepage   :text
#  lifts      :integer
#  elevation  :integer
#  area       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Resort < ApplicationRecord
  has_many :messages
end
