class MySchedulesController < ApplicationController
  before_action :set_my_schedule, only: [:show, :edit, :update, :destroy]

  # GET /my_schedules
  # GET /my_schedules.json
  def index
    @my_schedules = MySchedule.all
  end

  # GET /my_schedules/1
  # GET /my_schedules/1.json
  def show
  end

  # GET /my_schedules/new
  def new
    @my_schedule = MySchedule.new
  end

  # GET /my_schedules/1/edit
  def edit
  end

  # POST /my_schedules
  # POST /my_schedules.json
  def create
    @my_schedule = MySchedule.new(my_schedule_params)

    respond_to do |format|
      if @my_schedule.save
        format.html { redirect_to @my_schedule, notice: 'My schedule was successfully created.' }
        format.json { render :show, status: :created, location: @my_schedule }
      else
        format.html { render :new }
        format.json { render json: @my_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_schedules/1
  # PATCH/PUT /my_schedules/1.json
  def update
    respond_to do |format|
      if @my_schedule.update(my_schedule_params)
        format.html { redirect_to @my_schedule, notice: 'My schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_schedule }
      else
        format.html { render :edit }
        format.json { render json: @my_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_schedules/1
  # DELETE /my_schedules/1.json
  def destroy
    @my_schedule.destroy
    respond_to do |format|
      format.html { redirect_to my_schedules_url, notice: 'My schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_schedule
      @my_schedule = MySchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_schedule_params
      params.require(:my_schedule).permit(:course_name, :subjects, :start_time, :time, :duration, :date)
    end
end
