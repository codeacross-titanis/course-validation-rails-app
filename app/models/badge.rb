class Badge < ActiveRecord::Base
  has_many :user_badges
  has_many :users, through: :user_badges
  belongs_to :user

  validates :title, presence: true
  validates :completed_date, presence: true
  validates :url, presence: true
  validates :description, presence: true 

  def self.categories_for_badge_dropdown
    all.map { |b| [b.title, b.id] }
  end
end
