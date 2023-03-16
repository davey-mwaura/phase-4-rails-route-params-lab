# app/controllers/students_controller.rb
class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  def index
    if params[:query]
      @students = Student.where('first_name LIKE ? OR last_name LIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @students = Student.all
    end
    render json: @students
  end
end
