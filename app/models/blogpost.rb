class Blogpost < ApplicationRecord
    validates :name, presence: true
    validates :content, length: { maximum: 140 }, presence: true
end
