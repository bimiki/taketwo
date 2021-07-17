class MainthreadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_mainthread, only: %i[ show edit update destroy ]

  # GET /mainthreads or /mainthreads.json
  def index
    @mainthreads = Mainthread.all
    @mainthread = Mainthread.new
  end


  # GET /mainthreads/1 or /mainthreads/1.json
  def show
  end

  # GET /mainthreads/new
  def new
    @mainthread = Mainthread.new
  end

  # GET /mainthreads/1/edit
  def edit
  end

  # POST /mainthreads or /mainthreads.json
  def create
    @mainthread = Mainthread.new(mainthread_params)

    respond_to do |format|
      if @mainthread.save
        format.html { redirect_to @mainthread, notice: "Mainthread was successfully created." }
        format.json { render :show, status: :created, location: @mainthread }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mainthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainthreads/1 or /mainthreads/1.json
  def update
    respond_to do |format|
      if @mainthread.update(mainthread_params)
        format.html { redirect_to @mainthread, notice: "Mainthread was successfully updated." }
        format.json { render :show, status: :ok, location: @mainthread }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mainthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainthreads/1 or /mainthreads/1.json
  def destroy
    @mainthread.destroy = @destroy
    respond_to do |format|
      format.html { redirect_to mainthreads_url, notice: "Mainthread was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainthread
      @mainthread = Mainthread.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mainthread_params
      params.require(:mainthread).permit(:name, :info)
    end
end
