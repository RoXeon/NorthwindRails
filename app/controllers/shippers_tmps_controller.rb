class ShippersTmpsController < ApplicationController
  before_action :set_shippers_tmp, only: [:show, :edit, :update, :destroy]

  # GET /shippers_tmps
  # GET /shippers_tmps.json
  def index
    @shippers_tmps = ShippersTmp.all
  end

  # GET /shippers_tmps/1
  # GET /shippers_tmps/1.json
  def show
  end

  # GET /shippers_tmps/new
  def new
    @shippers_tmp = ShippersTmp.new
  end

  # GET /shippers_tmps/1/edit
  def edit
  end

  # POST /shippers_tmps
  # POST /shippers_tmps.json
  def create
    @shippers_tmp = ShippersTmp.new(shippers_tmp_params)

    respond_to do |format|
      if @shippers_tmp.save
        format.html { redirect_to @shippers_tmp, notice: 'Shippers tmp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shippers_tmp }
      else
        format.html { render action: 'new' }
        format.json { render json: @shippers_tmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shippers_tmps/1
  # PATCH/PUT /shippers_tmps/1.json
  def update
    respond_to do |format|
      if @shippers_tmp.update(shippers_tmp_params)
        format.html { redirect_to @shippers_tmp, notice: 'Shippers tmp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shippers_tmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shippers_tmps/1
  # DELETE /shippers_tmps/1.json
  def destroy
    @shippers_tmp.destroy
    respond_to do |format|
      format.html { redirect_to shippers_tmps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shippers_tmp
      @shippers_tmp = ShippersTmp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shippers_tmp_params
      params.require(:shippers_tmp).permit(:ShipperID, :CompanyName, :Phone)
    end
end
