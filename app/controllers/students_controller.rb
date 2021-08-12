class StudentsController < ApplicationController

  def index
    student = Student.all
    render json: student
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
