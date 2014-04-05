class UsstatesController < ApplicationController
  before_action :set_usstate, only: [:show, :edit, :update, :destroy]

  # GET /usstates
  # GET /usstates.json
  def index
    @usstates = Usstate.all
  end

  # GET /usstates/1
  # GET /usstates/1.json
  def show
  end

  # GET /usstates/new
  def new
    @usstate = Usstate.new
  end

  # GET /usstates/1/edit
  def edit
  end

  # POST /usstates
  # POST /usstates.json
  def create
    @usstate = Usstate.new(usstate_params)

    respond_to do |format|
      if @usstate.save
        format.html { redirect_to @usstate, notice: 'Usstate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usstate }
      else
        format.html { render action: 'new' }
        format.json { render json: @usstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usstates/1
  # PATCH/PUT /usstates/1.json
  def update
    respond_to do |format|
      if @usstate.update(usstate_params)
        format.html { redirect_to @usstate, notice: 'Usstate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usstates/1
  # DELETE /usstates/1.json
  def destroy
    @usstate.destroy
    respond_to do |format|
      format.html { redirect_to usstates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usstate
      @usstate = Usstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usstate_params
      params.require(:usstate).permit(:StateID, :StateName, :StateAbbr, :StateRegion)
    end
end
