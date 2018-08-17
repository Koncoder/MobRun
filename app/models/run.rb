class Run < ApplicationRecord

  include PgSearch

  pg_search_scope :search_by_route_name,
    associated_against: { route: :name },
    using: {
      tsearch: { prefix: true }
    }


  belongs_to :route
  belongs_to :user
  has_many :run_sessions
  has_many :participants, through: :run_sessions, class_name: "User", source: "user"

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :speed, presence: true

  def self.upcoming_runs(user)
    user.runs.where("end_time > ?", Time.now).order(:start_time)
  end

  def self.completed_runs(user)
    user.runs.where("end_time < ?", Time.now).order(:start_time)
  end

  def self.all_upcoming_runs
    Run.where("end_time > ?", Time.now).order(:start_time)
  end

  def self.search_by_pace_faster_than(bound)
    Run.where("speed >= #{bound}")
  end

  def self.search_by_pace_slower_than(bound)
    Run.where("speed <= #{bound}")
  end

end
