class EmployeeterritoriesController < ApplicationController
  before_action :set_employeeterritory, only: [:show, :edit, :update, :destroy]

  # GET /employeeterritories
  # GET /employeeterritories.json
  def index
    @employeeterritories = Employeeterritory.all
  end

  # GET /employeeterritories/1
  # GET /employeeterritories/1.json
  def show
  end

  # GET /employeeterritories/new
  def new
    @employeeterritory = Employeeterritory.new
  end

  # GET /employeeterritories/1/edit
  def edit
  end

  # POST /employeeterritories
  # POST /employeeterritories.json
  def create
    @employeeterritory = Employeeterritory.new(employeeterritory_params)

    respond_to do |format|
      if @employeeterritory.save
        format.html { redirect_to @employeeterritory, notice: 'Employeeterritory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @employeeterritory }
      else
        format.html { render action: 'new' }
        format.json { render json: @employeeterritory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeeterritories/1
  # PATCH/PUT /employeeterritories/1.json
  def update
    respond_to do |format|
      if @employeeterritory.update(employeeterritory_params)
        format.html { redirect_to @employeeterritory, notice: 'Employeeterritory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @employeeterritory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeeterritories/1
  # DELETE /employeeterritories/1.json
  def destroy
    @employeeterritory.destroy
    respond_to do |format|
      format.html { redirect_to employeeterritories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeeterritory
      @employeeterritory = Employeeterritory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employeeterritory_params
      params.require(:employeeterritory).permit(:EmployeeID, :TerritoryID)
    end
end
