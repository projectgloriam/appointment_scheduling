class PatientDismissalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patient_dismissal, only: [:show, :edit, :update, :destroy]
  before_action :redirect_to_source, only: [:index]

  # GET /patient_dismissals
  # GET /patient_dismissals.json
  def index
    @patient_dismissals = PatientDismissal.all
  end

  # GET /patient_dismissals/1
  # GET /patient_dismissals/1.json
  def show
  end

  # GET /patient_dismissals/new
  def new
    @patient_dismissal = PatientDismissal.new
  end

  # GET /patient_dismissals/1/edit
  def edit
  end

  # POST /patient_dismissals
  # POST /patient_dismissals.json
  def create
    @patient_dismissal = PatientDismissal.new(patient_dismissal_params)

    respond_to do |format|
      if @patient_dismissal.save
        format.html { redirect_to @patient_dismissal, notice: 'Patient dismissal was successfully created.' }
        format.json { render :show, status: :created, location: @patient_dismissal }
      else
        format.html { render :new }
        format.json { render json: @patient_dismissal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_dismissals/1
  # PATCH/PUT /patient_dismissals/1.json
  def update
    respond_to do |format|
      if @patient_dismissal.update(patient_dismissal_params)
        format.html { redirect_to @patient_dismissal, notice: 'Patient dismissal was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_dismissal }
      else
        format.html { render :edit }
        format.json { render json: @patient_dismissal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_dismissals/1
  # DELETE /patient_dismissals/1.json
  def destroy
    @patient_dismissal.destroy
    respond_to do |format|
      format.html { redirect_to patient_dismissals_url, notice: 'Patient dismissal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_dismissal
      @patient_dismissal = PatientDismissal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_dismissal_params
      params.require(:patient_dismissal).permit(:status)
    end
end
