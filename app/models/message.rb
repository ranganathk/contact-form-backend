# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  username    :string
#  email       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Message < ApplicationRecord
  validates :username, :presence => true
  validates :email, :presence => true
  validates :description, :presence => true
end
