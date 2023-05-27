class FloatersController < ApplicationController
  before_action :set_floater, only: %i[ show edit update destroy ]

  # GET /floaters or /floaters.json
  def index
    @floaters = Floater.all
  end

  # GET /floaters/1 or /floaters/1.json
  def show
  end

  # GET /floaters/new
  def new
    @floater = Floater.new
  end

  # GET /floaters/1/edit
  def edit
  end

  # POST /floaters or /floaters.json
  def create
    @floater = Floater.new(floater_params)

    respond_to do |format|
      if @floater.save
        format.html { redirect_to floater_url(@floater), notice: "Floater was successfully created." }
        format.json { render :show, status: :created, location: @floater }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @floater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floaters/1 or /floaters/1.json
  def update
    respond_to do |format|
      if @floater.update(floater_params)
        format.html { redirect_to floater_url(@floater), notice: "Floater was successfully updated." }
        format.json { render :show, status: :ok, location: @floater }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @floater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floaters/1 or /floaters/1.json
  def destroy
    @floater.destroy

    respond_to do |format|
      format.html { redirect_to floaters_url, notice: "Floater was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floater
      @floater = Floater.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def floater_params
      params.require(:floater).permit(:amount)
    end
end
