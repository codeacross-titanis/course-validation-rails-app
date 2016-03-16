class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user_badges
  has_many :badges, through: :user_badges
  has_many :user_courses
  has_many :courses, through: :user_courses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates_inclusion_of :organization, :in => [true, false]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.categories_for_user_dropdown
    all.map { |u| [u.last_name, u.id] }
  end
end
