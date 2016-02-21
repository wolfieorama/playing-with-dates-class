class WprsController < ApplicationController
  before_action :set_wpr, only: [:show, :edit, :update, :destroy]

  # GET /wprs
  # GET /wprs.json
  def index
    @wprs = Wpr.all
  end

  # GET /wprs/1
  # GET /wprs/1.json
  def show
  end

  # GET /wprs/new
  def new
    @wpr = Wpr.new
  end

  # GET /wprs/1/edit
  def edit
  end

  # POST /wprs
  # POST /wprs.json
  def create
    @wpr = Wpr.new(wpr_params)

    respond_to do |format|
      if @wpr.save
        format.html { redirect_to @wpr, notice: 'Wpr was successfully created.' }
        format.json { render :show, status: :created, location: @wpr }
      else
        format.html { render :new }
        format.json { render json: @wpr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wprs/1
  # PATCH/PUT /wprs/1.json
  def update
    respond_to do |format|
      if @wpr.update(wpr_params)
        format.html { redirect_to @wpr, notice: 'Wpr was successfully updated.' }
        format.json { render :show, status: :ok, location: @wpr }
      else
        format.html { render :edit }
        format.json { render json: @wpr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wprs/1
  # DELETE /wprs/1.json
  def destroy
    @wpr.destroy
    respond_to do |format|
      format.html { redirect_to wprs_url, notice: 'Wpr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wpr
      @wpr = Wpr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wpr_params
      params.require(:wpr).permit(:c_score, :a_score, :n_score, :week_id)
    end
end
