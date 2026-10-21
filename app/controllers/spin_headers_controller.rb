class SpinHeadersController < ApplicationController
  before_action :set_spin_header, only: [:show, :edit, :update, :destroy]

  # GET /spin_headers
  # GET /spin_headers.json
  def index
    @spin_headers = SpinHeader.all
  end

  # GET /spin_headers/1
  # GET /spin_headers/1.json
  def show
  end

  # GET /spin_headers/new
  def new
    @spin_header = SpinHeader.new
  end

  # GET /spin_headers/1/edit
  def edit
  end

  # POST /spin_headers
  # POST /spin_headers.json
  def create
    @spin_header = SpinHeader.new(spin_header_params)

    respond_to do |format|
      if @spin_header.save
        format.html { redirect_to @spin_header, notice: 'Spin header was successfully created.' }
        format.json { render :show, status: :created, location: @spin_header }
      else
        format.html { render :new }
        format.json { render json: @spin_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spin_headers/1
  # PATCH/PUT /spin_headers/1.json
  def update
    respond_to do |format|
      if @spin_header.update(spin_header_params)
        format.html { redirect_to @spin_header, notice: 'Spin header was successfully updated.' }
        format.json { render :show, status: :ok, location: @spin_header }
      else
        format.html { render :edit }
        format.json { render json: @spin_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spin_headers/1
  # DELETE /spin_headers/1.json
  def destroy
    @spin_header.destroy
    respond_to do |format|
      format.html { redirect_to spin_headers_url, notice: 'Spin header was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spin_header
      @spin_header = SpinHeader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spin_header_params
      params.require(:spin_header).permit(:SpinHeader, :file_store_id, :notes, :stage, :time_recorded, :distance_recorded, :avg_speed_recorded, :avg_watts_recorded, :avg_hr_recorded, :avg_rpm_recorded, :max_speed_recorded, :max_watts_recorded, :max_hr_recorded, :max_rpm_recorded, :kcal_recorded, :kj_recorded, :distance_calc, :avg_speed_calc, :avg_watts_calc, :avg_hr_calc, :avg_rpm_calc, :max_speed_calc, :max_watts_calc, :max_hr_calc, :max_rpm_calc)
    end
end
