class Episode < ApplicationRecord
  validates :name, presence: true
  belongs_to :season
  has_many :comments
end
