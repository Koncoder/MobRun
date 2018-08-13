class Route < ApplicationRecord
  has_many :runs

  validates :start_point, presence: true
  validates :end_point, presence: true
  validates :total_length, presence: true
end
