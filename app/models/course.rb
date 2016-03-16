class Course < ActiveRecord::Base
  has_many :user_courses
  has_many :users, through: :user_courses

  validates :course_title, presence: true
  validates :provider, presence: true
  validates :completed_date, presence: true
end
