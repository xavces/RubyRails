class Season < ApplicationRecord
  validates :num, presence: true
  
  belongs_to :serie
end
