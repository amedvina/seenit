class Post < ApplicationRecord
  belongs_to :user
  belongs_to :community
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :description, length: { maximum: 5000 }
end
