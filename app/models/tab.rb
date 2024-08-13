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

  belongs_to :user

  # needs 'has_rich_text' since it's a rails action text
  has_rich_text :content

  scope :by_user, ->(user) { where(user:) }
  
  validates :title, presence: true
  validates :content, presence: true

  def to_s
    "#{title.capitalize}"
  end
end
