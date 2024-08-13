# == Schema Information
#
# Table name: tabs
#
#  id         :integer          not null, primary key
#  content    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Tab < ApplicationRecord
  include Ransackable
  # belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"
  belongs_to :user

  # needed to change it to a trix text editor 
  has_rich_text :content

  # scope to find tabs created by certain users 
  scope :by_user, ->(user) { where(user: user) }

  validates :title, presence: true
  validates :content, presence: true

  def to_s
    "#{title.capitalize}"
  end
end
