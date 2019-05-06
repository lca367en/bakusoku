class BakusokukunsController < ApplicationController
  before_action :set_bakusokukun, only: [:show, :edit, :update, :destroy]

  # GET /bakusokukuns
  # GET /bakusokukuns.json
  def index
    @bakusokukuns = Bakusokukun.all
  end

  # GET /bakusokukuns/1
  # GET /bakusokukuns/1.json
  def show
  end

  # GET /bakusokukuns/new
  def new
    @bakusokukun = Bakusokukun.new
  end

  # GET /bakusokukuns/1/edit
  def edit
  end

  # POST /bakusokukuns
  # POST /bakusokukuns.json
  def create
    @bakusokukun = Bakusokukun.new(bakusokukun_params)

    respond_to do |format|
      if @bakusokukun.save
        format.html { redirect_to @bakusokukun, notice: 'Bakusokukun was successfully created.' }
        format.json { render :show, status: :created, location: @bakusokukun }
      else
        format.html { render :new }
        format.json { render json: @bakusokukun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bakusokukuns/1
  # PATCH/PUT /bakusokukuns/1.json
  def update
    respond_to do |format|
      if @bakusokukun.update(bakusokukun_params)
        format.html { redirect_to @bakusokukun, notice: 'Bakusokukun was successfully updated.' }
        format.json { render :show, status: :ok, location: @bakusokukun }
      else
        format.html { render :edit }
        format.json { render json: @bakusokukun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bakusokukuns/1
  # DELETE /bakusokukuns/1.json
  def destroy
    @bakusokukun.destroy
    respond_to do |format|
      format.html { redirect_to bakusokukuns_url, notice: 'Bakusokukun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bakusokukun
      @bakusokukun = Bakusokukun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bakusokukun_params
      params.require(:bakusokukun).permit(:Time_JST, :Num_of_Pages)
    end
end
