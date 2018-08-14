class Route < ApplicationRecord
  has_many :runs

  validates :name, presence: true
  validates :start_point, presence: true
  validates :end_point, presence: true
  validates :total_length, presence: true
end
