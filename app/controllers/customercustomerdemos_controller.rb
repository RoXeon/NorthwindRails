class CustomercustomerdemosController < ApplicationController
  before_action :set_customercustomerdemo, only: [:show, :edit, :update, :destroy]

  # GET /customercustomerdemos
  # GET /customercustomerdemos.json
  def index
    @customercustomerdemos = Customercustomerdemo.all
  end

  # GET /customercustomerdemos/1
  # GET /customercustomerdemos/1.json
  def show
  end

  # GET /customercustomerdemos/new
  def new
    @customercustomerdemo = Customercustomerdemo.new
  end

  # GET /customercustomerdemos/1/edit
  def edit
  end

  # POST /customercustomerdemos
  # POST /customercustomerdemos.json
  def create
    @customercustomerdemo = Customercustomerdemo.new(customercustomerdemo_params)

    respond_to do |format|
      if @customercustomerdemo.save
        format.html { redirect_to @customercustomerdemo, notice: 'Customercustomerdemo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customercustomerdemo }
      else
        format.html { render action: 'new' }
        format.json { render json: @customercustomerdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customercustomerdemos/1
  # PATCH/PUT /customercustomerdemos/1.json
  def update
    respond_to do |format|
      if @customercustomerdemo.update(customercustomerdemo_params)
        format.html { redirect_to @customercustomerdemo, notice: 'Customercustomerdemo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customercustomerdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customercustomerdemos/1
  # DELETE /customercustomerdemos/1.json
  def destroy
    @customercustomerdemo.destroy
    respond_to do |format|
      format.html { redirect_to customercustomerdemos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customercustomerdemo
      @customercustomerdemo = Customercustomerdemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customercustomerdemo_params
      params.require(:customercustomerdemo).permit(:CustomerID, :CustomerTypeID)
    end
end
