# == Schema Information
#
# Table name: messages
#
#  id         :bigint(8)        not null, primary key
#  message_id :integer
#  resort_id  :integer
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
  belongs_to :user
end
