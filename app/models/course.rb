class Course < ActiveRecord::Base
  belongs_to :user

  validates :course_title, presence: true
  validates :provider, presence: true
  validates :completed_date, presence: true
end
