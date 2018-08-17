class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_picture, PhotoUploader

  has_many :run_sessions
  has_many :runs, through: :run_sessions
  has_many :created_runs, class_name: "Run", source: "run"
  has_many :routes, through: :runs

  def has_this_run_today?(run)
    run.start_time.today? && RunSession.where(user_id: self.id, run_id: run.id).exists?
  end
end
