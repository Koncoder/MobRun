class Run < ApplicationRecord
  belongs_to :route
  belongs_to :user
  has_many :users, through: :sessions
end
