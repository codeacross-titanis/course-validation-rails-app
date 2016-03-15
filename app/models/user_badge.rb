class UserBadge < ActiveRecord::Base
  belongs_to :badge_assigner, class_name: "User"
  belongs_to :badge_receiver, class_name: "User"
  belongs_to :badge
end
