class FileStoresController < ApplicationController
  before_action :set_file_store, only: [:show, :edit, :update, :destroy]

  # GET /file_stores
  # GET /file_stores.json
  def index
    @file_stores = FileStore.all
  end

  # GET /file_stores/1
  # GET /file_stores/1.json
  def show
  end

  # GET /file_stores/new
  def new
    @file_store = FileStore.new
  end

  # GET /file_stores/1/edit
  def edit
  end

  # POST /file_stores
  # POST /file_stores.json
  def create
    @file_store = FileStore.new(file_store_params)

    respond_to do |format|
      if @file_store.save
        format.html { redirect_to @file_store, notice: 'File store was successfully created.' }
        format.json { render :show, status: :created, location: @file_store }
      else
        @errors = @file_store.errors
        format.html { render :new }
        format.json { render json: @file_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_stores/1
  # PATCH/PUT /file_stores/1.json
  def update
    respond_to do |format|
      if @file_store.update(file_store_params)
        format.html { redirect_to @file_store, notice: 'File store was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_store }
      else
        @errors = @file_store.errors
        byebug
        format.html { render :edit }
        format.json { render json: @file_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_stores/1
  # DELETE /file_stores/1.json
  def destroy
    @file_store.destroy
    respond_to do |format|
      format.html { redirect_to file_stores_url, notice: 'File store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_store
      @file_store = FileStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_store_params
      params.require(:file_store).permit(:description, :date_loaded, :date_exercised, :attachment, :processed)
    end
end
