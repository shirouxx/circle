class StudentsController < ApplicationController

  def index
    # @students = Student.all
    # @students = Student.where("bukatu_id" != 7)
    # @students = Student.where(params[:bukatu_id] != 7)
    # @students = Student.where(params[:bukatu_id] not 7)
    # =>　Unsupported argument type: true (TrueClass)
    @students = Student.where.not(bukatu_id: 7) #帰宅部以外の生徒を表示
    # http://railsdoc.com/references/not
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
       flash[:notice] = "登録出来ました！"
       redirect_to @student
    else
       flash[:notice] = "再度入力し直して下さい！"
       redirect_to new_student_path
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
       redirect_to student_path
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private
   def student_params
     params.require(:student).permit(:name, :grade, :content, :bukatu_id)
   end

end
