class DateersController < ApplicationController
  before_action :set_dateer, only: %i[ show edit update destroy ]

  # GET /dateers or /dateers.json
  def index
    @dateers = Dateer.all
  end

  # GET /dateers/1 or /dateers/1.json
  def show
  end

  # GET /dateers/new
  def new
    @dateer = Dateer.new
  end

  # GET /dateers/1/edit
  def edit
  end

  # POST /dateers or /dateers.json
  def create
    @dateer = Dateer.new(dateer_params)

    respond_to do |format|
      if @dateer.save
        format.html { redirect_to dateer_url(@dateer), notice: "Dateer was successfully created." }
        format.json { render :show, status: :created, location: @dateer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dateer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dateers/1 or /dateers/1.json
  def update
    respond_to do |format|
      if @dateer.update(dateer_params)
        format.html { redirect_to dateer_url(@dateer), notice: "Dateer was successfully updated." }
        format.json { render :show, status: :ok, location: @dateer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dateer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dateers/1 or /dateers/1.json
  def destroy
    @dateer.destroy

    respond_to do |format|
      format.html { redirect_to dateers_url, notice: "Dateer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dateer
      @dateer = Dateer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dateer_params
      params.require(:dateer).permit(:data)
    end
end
