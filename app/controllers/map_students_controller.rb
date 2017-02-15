class MapStudentsController < ApplicationController
  before_action :set_map_student, only: [:show, :edit, :update, :destroy]

  # GET /map_students
  # GET /map_students.json
  def index
    @map_students = MapStudent.all
  end

  # GET /map_students/1
  # GET /map_students/1.json
  def show
  end

  # GET /map_students/new
  def new
    @map_student = MapStudent.new
  end

  # GET /map_students/1/edit
  def edit
  end

  # POST /map_students
  # POST /map_students.json
  def create
    @map_student = MapStudent.new(map_student_params)

    respond_to do |format|
      if @map_student.save
        format.html { redirect_to @map_student, notice: 'Map student was successfully created.' }
        format.json { render :show, status: :created, location: @map_student }
      else
        format.html { render :new }
        format.json { render json: @map_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_students/1
  # PATCH/PUT /map_students/1.json
  def update
    respond_to do |format|
      if @map_student.update(map_student_params)
        format.html { redirect_to @map_student, notice: 'Map student was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_student }
      else
        format.html { render :edit }
        format.json { render json: @map_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_students/1
  # DELETE /map_students/1.json
  def destroy
    @map_student.destroy
    respond_to do |format|
      format.html { redirect_to map_students_url, notice: 'Map student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    MapStudent.import(params[:file])
    redirect_to map_students_path, notice: "Student successfully added"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_student
      @map_student = MapStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_student_params
      params.require(:map_student).permit(:enroll_no, :name, :phone_no, :password)
    end
end
