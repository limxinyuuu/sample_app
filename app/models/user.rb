class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true
  validates_uniqueness_of :name
  validates :email, presence: true
  validates_uniqueness_of :email
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, length: { maximum: 255 },
                  #format: { with: VALID_EMAIL_REGEX }
                  #uniqueness: { case_sensitive: false }
end
