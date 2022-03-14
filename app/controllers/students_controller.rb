class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades 
        grades = Student.all.order("grade DESC")
        render json: grades
    end

    def highest_grade 
        highest = Student.all.max_by { |s| s.grade }
        render json: highest
    end

end
