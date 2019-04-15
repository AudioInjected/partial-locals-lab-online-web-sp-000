class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    raise @students.inspect
    @students = @classroom.students
  end

  def index
    @classrooms = Classroom.all
  end
end

#<% @students.each do |student| %>
 # <%= render partial: 'students/student', locals: {student: student} %>
#<% end %>