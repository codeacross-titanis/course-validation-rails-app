class CreateUserBadges < ActiveRecord::Migration
  def change
    create_table :user_badges do |t|
      t.belongs_to :badge_assigner
      t.belongs_to :badge_receiver
      t.belongs_to :badge
    end
  end
end
