class Micropost < ApplicationRecord
  belongs_to :parjos
  validates :content, length: { maximum: 140 }, presence: true
end
