class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :episodes

  validates :user, presence: true
  validates :restaurant, presence: true
  validates :text, length: { minimum: 5 }
end
