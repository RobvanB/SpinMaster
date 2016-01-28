class SpinEntriesController < ApplicationController
  before_action :set_spin_entry, only: [:show, :edit, :update, :destroy]

  # GET /spin_entries
  # GET /spin_entries.json
  def index
    @spin_entries = SpinEntry.all
  end

  # GET /spin_entries/1
  # GET /spin_entries/1.json
  def show
  end

  # GET /spin_entries/new
  def new
    @spin_entry = SpinEntry.new
  end

  # GET /spin_entries/1/edit
  def edit
  end

  # POST /spin_entries
  # POST /spin_entries.json
  def create
    @spin_entry = SpinEntry.new(spin_entry_params)

    respond_to do |format|
      if @spin_entry.save
        format.html { redirect_to @spin_entry, notice: 'Spin entry was successfully created.' }
        format.json { render :show, status: :created, location: @spin_entry }
      else
        format.html { render :new }
        format.json { render json: @spin_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spin_entries/1
  # PATCH/PUT /spin_entries/1.json
  def update
    respond_to do |format|
      if @spin_entry.update(spin_entry_params)
        format.html { redirect_to @spin_entry, notice: 'Spin entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @spin_entry }
      else
        format.html { render :edit }
        format.json { render json: @spin_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spin_entries/1
  # DELETE /spin_entries/1.json
  def destroy
    @spin_entry.destroy
    respond_to do |format|
      format.html { redirect_to spin_entries_url, notice: 'Spin entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spin_entry
      @spin_entry = SpinEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spin_entry_params
      params.require(:spin_entry).permit(:time, :distance, :speed, :power, :hrate, :rpm, :spin_date, :user_id)
    end
end
