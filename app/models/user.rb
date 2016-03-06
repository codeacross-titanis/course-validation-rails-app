class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates_inclusion_of :organization, :in => [true, false] 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
