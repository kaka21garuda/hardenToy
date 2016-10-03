class Parjo < ApplicationRecord
  #a user has many microposts
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true

end
