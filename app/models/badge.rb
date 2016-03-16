class Badge < ActiveRecord::Base
  has_many :user_badges
  has_many :users, through: :user_badges
  belongs_to :user

  def self.categories_for_badge_dropdown
    all.map { |b| [b.title, b.id] }
  end
end
