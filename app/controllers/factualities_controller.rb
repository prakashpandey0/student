class FactualitiesController < ApplicationController
  before_action :set_factuality, only: [:show, :edit, :update, :destroy]

  # GET /factualities
  # GET /factualities.json
  def index
    @factualities = Factuality.all
  end

  # GET /factualities/1
  # GET /factualities/1.json
  def show
  end

  # GET /factualities/new
  def new
    @factuality = Factuality.new
  end

  # GET /factualities/1/edit
  def edit
  end

  # POST /factualities
  # POST /factualities.json
  def create
    @factuality = Factuality.new(factuality_params)

    respond_to do |format|
      if @factuality.save
        format.html { redirect_to @factuality, notice: 'Factuality was successfully created.' }
        format.json { render :show, status: :created, location: @factuality }
      else
        format.html { render :new }
        format.json { render json: @factuality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factualities/1
  # PATCH/PUT /factualities/1.json
  def update
    respond_to do |format|
      if @factuality.update(factuality_params)
        format.html { redirect_to @factuality, notice: 'Factuality was successfully updated.' }
        format.json { render :show, status: :ok, location: @factuality }
      else
        format.html { render :edit }
        format.json { render json: @factuality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factualities/1
  # DELETE /factualities/1.json
  def destroy
    @factuality.destroy
    respond_to do |format|
      format.html { redirect_to factualities_url, notice: 'Factuality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factuality
      @factuality = Factuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factuality_params
      params.require(:factuality).permit(:teachers_name, :mobile_no)
    end
end
