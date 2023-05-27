class BooleansController < ApplicationController
  before_action :set_boolean, only: %i[ show edit update destroy ]

  # GET /booleans or /booleans.json
  def index
    @booleans = Boolean.all
  end

  # GET /booleans/1 or /booleans/1.json
  def show
  end

  # GET /booleans/new
  def new
    @boolean = Boolean.new
  end

  # GET /booleans/1/edit
  def edit
  end

  # POST /booleans or /booleans.json
  def create
    @boolean = Boolean.new(boolean_params)

    respond_to do |format|
      if @boolean.save
        format.html { redirect_to boolean_url(@boolean), notice: "Boolean was successfully created." }
        format.json { render :show, status: :created, location: @boolean }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boolean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booleans/1 or /booleans/1.json
  def update
    respond_to do |format|
      if @boolean.update(boolean_params)
        format.html { redirect_to boolean_url(@boolean), notice: "Boolean was successfully updated." }
        format.json { render :show, status: :ok, location: @boolean }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boolean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booleans/1 or /booleans/1.json
  def destroy
    @boolean.destroy

    respond_to do |format|
      format.html { redirect_to booleans_url, notice: "Boolean was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boolean
      @boolean = Boolean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boolean_params
      params.require(:boolean).permit(:fixed)
    end
end
