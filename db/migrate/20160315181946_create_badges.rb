class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :title, null: false
      t.date :completed_date, null: false
      t.string :url, null: false
      t.text :description, null: false
    end
  end
end
