class Run < ApplicationRecord
  belongs_to :route
  belongs_to :user
  has_many :users, through: :sessions

  validates :start_time, presence: true
  validates :end_time, presence: true
end
