class TratmentsController < ApplicationController
  before_action :set_tratment, only: [:show, :edit, :update, :destroy]

  # GET /tratments
  # GET /tratments.json
  def index
    @tratments = Tratment.all
  end

  # GET /tratments/1
  # GET /tratments/1.json
  def show
  end

  # GET /tratments/new
  def new
    @tratment = Tratment.new
  end

  # GET /tratments/1/edit
  def edit
  end

  # POST /tratments
  # POST /tratments.json
  def create
    @tratment = Tratment.new(tratment_params)

    respond_to do |format|
      if @tratment.save
        format.html { redirect_to @tratment, notice: 'Tratment was successfully created.' }
        format.json { render :show, status: :created, location: @tratment }
      else
        format.html { render :new }
        format.json { render json: @tratment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tratments/1
  # PATCH/PUT /tratments/1.json
  def update
    respond_to do |format|
      if @tratment.update(tratment_params)
        format.html { redirect_to @tratment, notice: 'Tratment was successfully updated.' }
        format.json { render :show, status: :ok, location: @tratment }
      else
        format.html { render :edit }
        format.json { render json: @tratment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tratments/1
  # DELETE /tratments/1.json
  def destroy
    @tratment.destroy
    respond_to do |format|
      format.html { redirect_to tratments_url, notice: 'Tratment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tratment
      @tratment = Tratment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tratment_params
      params.require(:tratment).permit(:doctor_id, :patient_id, :Amount, :data)
    end
end
