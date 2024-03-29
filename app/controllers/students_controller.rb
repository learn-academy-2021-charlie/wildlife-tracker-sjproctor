class StudentsController < ApplicationController

  def index
    student = Student.all
    render json: student
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def create
    student = Student.create(student_params)
    if student.valid?
      render json: student
    else
      render json: student.errors
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :cohort)
  end

end
