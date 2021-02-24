class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show 
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.new
  end
  
  def create
    # Create a new Student instance
    @student = Student.new
    # Pass in the parameters from the form
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    # Save the record
    @student.save
  # Update the code with a redirect that leverages a route helper method
  # Refactor the post variable into an instance variable
    redirect_to student_path(@student)
  # submitting a new student's name, they're automatically redirected to the show page for the post they just created.
  end
  end
