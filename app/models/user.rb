class User < ApplicationRecord
  has_many :communities
  has_many :comments
  has_many :subscriptions
  has_many :communities, through: :subscriptions

  validates_uniqueness_of :username
  validates_presence_of :username
end
