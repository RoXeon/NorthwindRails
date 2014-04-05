class CustomerdemographicsController < ApplicationController
  before_action :set_customerdemographic, only: [:show, :edit, :update, :destroy]

  # GET /customerdemographics
  # GET /customerdemographics.json
  def index
    @customerdemographics = Customerdemographic.all
  end

  # GET /customerdemographics/1
  # GET /customerdemographics/1.json
  def show
  end

  # GET /customerdemographics/new
  def new
    @customerdemographic = Customerdemographic.new
  end

  # GET /customerdemographics/1/edit
  def edit
  end

  # POST /customerdemographics
  # POST /customerdemographics.json
  def create
    @customerdemographic = Customerdemographic.new(customerdemographic_params)

    respond_to do |format|
      if @customerdemographic.save
        format.html { redirect_to @customerdemographic, notice: 'Customerdemographic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customerdemographic }
      else
        format.html { render action: 'new' }
        format.json { render json: @customerdemographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerdemographics/1
  # PATCH/PUT /customerdemographics/1.json
  def update
    respond_to do |format|
      if @customerdemographic.update(customerdemographic_params)
        format.html { redirect_to @customerdemographic, notice: 'Customerdemographic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customerdemographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerdemographics/1
  # DELETE /customerdemographics/1.json
  def destroy
    @customerdemographic.destroy
    respond_to do |format|
      format.html { redirect_to customerdemographics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerdemographic
      @customerdemographic = Customerdemographic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerdemographic_params
      params.require(:customerdemographic).permit(:CustomerTypeID, :CustomerDesc)
    end
end
