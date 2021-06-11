class PatientEncountersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patient_encounter, only: [:show, :edit, :update, :destroy]
  before_action :get_collection, only: [:new, :edit]

  # GET /patient_encounters
  # GET /patient_encounters.json
  def index
    @patient_encounters = PatientEncounter.all
  end

  # GET /patient_encounters/1
  # GET /patient_encounters/1.json
  def show
  end

  # GET /patient_encounters/new
  def new
    @patient_encounter = PatientEncounter.new
  end

  # GET /patient_encounters/1/edit
  def edit
  end

  # POST /patient_encounters
  # POST /patient_encounters.json
  def create
    @patient_encounter = PatientEncounter.new(patient_encounter_params)
    #setting patient id to patient_encounter's parent appointment's patient ID
    @patient_encounter.patient_id = @patient_encounter.appointment.patient_id

    respond_to do |format|
      if @patient_encounter.save
        format.html { redirect_to @patient_encounter, notice: 'Patient encounter was successfully created.' }
        format.json { render :show, status: :created, location: @patient_encounter }
      else
        format.html { render :new }
        format.json { render json: @patient_encounter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_encounters/1
  # PATCH/PUT /patient_encounters/1.json
  def update
    respond_to do |format|
      if @patient_encounter.update(patient_encounter_params)
        format.html { redirect_to @patient_encounter, notice: 'Patient encounter was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_encounter }
      else
        format.html { render :edit }
        format.json { render json: @patient_encounter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_encounters/1
  # DELETE /patient_encounters/1.json
  def destroy
    @patient_encounter.destroy
    respond_to do |format|
      format.html { redirect_to patient_encounters_url, notice: 'Patient encounter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_encounter
      @patient_encounter = PatientEncounter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_encounter_params
      params.require(:patient_encounter).permit(:encounter_primary_physician, :encounter_disposition, :body_temperature, :blood_pressure, :random_blood_sugar, :pulse, :appointment_id, :patient_id, :service_type_id, :service_location_id)
    end

end
