class Community < ApplicationRecord
  belongs_to :user
  has_many :posts

  has_many :subscriptions
  has_many :users, through: :subscriptions
end
