class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_title, null: false
      t.string :provider, null: false
      t.date :completed_date, null: false

      t.belongs_to :user
    end
  end
end
