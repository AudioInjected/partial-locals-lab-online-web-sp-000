class ClassroomsController < ApplicationController
  def show
    binding.pry
    @classroom = Classroom.find(params[:id])
    @students = @classroom.students
  end

  def index
    @classrooms = Classroom.all
  end
end

#<% @students.each do |student| %>
 # <%= render partial: 'students/student', locals: {student: student} %>
#<% end %>