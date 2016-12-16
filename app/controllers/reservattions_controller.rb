class ReservattionsController < ApplicationController
  before_action :set_reservattion, only: [:show, :edit, :update, :destroy]

  # GET /reservattions
  # GET /reservattions.json
  def index
    @reservattions = Reservattion.all
  end

  # GET /reservattions/1
  # GET /reservattions/1.json
  def show
  end

  # GET /reservattions/new
  def new
    @reservattion = Reservattion.new
  end

  # GET /reservattions/1/edit
  def edit
  end

  # POST /reservattions
  # POST /reservattions.json
  def create
    @reservattion = Reservattion.new(reservattion_params)

    respond_to do |format|
      if @reservattion.save
        format.html { redirect_to @reservattion, notice: 'Reservattion was successfully created.' }
        format.json { render :show, status: :created, location: @reservattion }
      else
        format.html { render :new }
        format.json { render json: @reservattion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservattions/1
  # PATCH/PUT /reservattions/1.json
  def update
    respond_to do |format|
      if @reservattion.update(reservattion_params)
        format.html { redirect_to @reservattion, notice: 'Reservattion was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservattion }
      else
        format.html { render :edit }
        format.json { render json: @reservattion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservattions/1
  # DELETE /reservattions/1.json
  def destroy
    @reservattion.destroy
    respond_to do |format|
      format.html { redirect_to reservattions_url, notice: 'Reservattion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservattion
      @reservattion = Reservattion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservattion_params
      params.require(:reservattion).permit(:date, :patient_id, :room_id)
    end
end
