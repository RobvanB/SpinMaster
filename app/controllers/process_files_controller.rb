class ProcessFilesController < ApplicationController
  def index
    #byebug
  end

  def start_process
    #byebug
    @something = "SOMETHING"
    #render :index, notice: "Files processed."  # Doesn't work
    flash.now[:notice] = "Files processed"
    render :index
  end

end
