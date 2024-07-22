# == Schema Information
#
# Table name: tabs
#
#  id         :integer          not null, primary key
#  body       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Tab < ApplicationRecord
  # belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"
  belongs_to :user
end
