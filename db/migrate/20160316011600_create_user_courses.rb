class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|
      t.belongs_to :user
      t.belongs_to :course
    end
  end
end
