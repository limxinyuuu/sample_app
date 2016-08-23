class Blogpost < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    validates :name, presence: true
    validates :content, length: { maximum: 140 }, presence: true
end
