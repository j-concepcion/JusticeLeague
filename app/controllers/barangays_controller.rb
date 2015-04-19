class BarangaysController < ApplicationController
  before_action :set_barangay, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /barangays
  # GET /barangays.json
  def index
    @barangays = Barangay.all
  end

  # GET /barangays/1
  # GET /barangays/1.json
  def show
  end

  # GET /barangays/new
  def new
    @barangay = Barangay.new
  end

  # GET /barangays/1/edit
  def edit
  end

  # POST /barangays
  # POST /barangays.json
  def create
    @barangay = Barangay.new(barangay_params)

    respond_to do |format|
      if @barangay.save
        format.html { redirect_to @barangay, notice: 'Barangay was successfully created.' }
        format.json { render :show, status: :created, location: @barangay }
      else
        format.html { render :new }
        format.json { render json: @barangay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangays/1
  # PATCH/PUT /barangays/1.json
  def update
    respond_to do |format|
      if @barangay.update(barangay_params)
        format.html { redirect_to @barangay, notice: 'Barangay was successfully updated.' }
        format.json { render :show, status: :ok, location: @barangay }
      else
        format.html { render :edit }
        format.json { render json: @barangay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangays/1
  # DELETE /barangays/1.json
  def destroy
    @barangay.destroy
    respond_to do |format|
      format.html { redirect_to barangays_url, notice: 'Barangay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay
      @barangay = Barangay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_params
      params.require(:barangay).permit(:name)
    end
end
