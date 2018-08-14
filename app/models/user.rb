class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :run_sessions
  has_many :runs, through: :run_sessions
  has_many :created_runs, class_name: "Run", source: "run"
  has_many :routes, through: :runs
end

