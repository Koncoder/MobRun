class User < ApplicationRecord
  has_many :sessions
  has_many :runs, through: :sessions
  has_many :created_runs, class_name: "Run", source: "run"
  has_many :routes, through: :runs
end
