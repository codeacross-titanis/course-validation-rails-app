class CoursesController < ApplicationController

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @user = current_user
    @course.user = @user  
    if @course.save
      redirect_to user_path(@user)
    else
      flash[:error] = @course.errors.full_messages.join('. ')
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(
      :course_title,
      :provider,
      :completed_date,
    )
  end
end
