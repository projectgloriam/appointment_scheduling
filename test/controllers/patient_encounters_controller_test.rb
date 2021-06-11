require 'test_helper'

class PatientEncountersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_encounter = patient_encounters(:one)
  end

  test "should get index" do
    get patient_encounters_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_encounter_url
    assert_response :success
  end

  test "should create patient_encounter" do
    assert_difference('PatientEncounter.count') do
      post patient_encounters_url, params: { patient_encounter: { appointment_id: @patient_encounter.appointment_id, blood_pressure: @patient_encounter.blood_pressure, body_temperature: @patient_encounter.body_temperature, encounter_disposition: @patient_encounter.encounter_disposition, encounter_primary_physician: @patient_encounter.encounter_primary_physician, patient_id: @patient_encounter.patient_id, pulse: @patient_encounter.pulse, random_blood_sugar: @patient_encounter.random_blood_sugar, service_location_id: @patient_encounter.service_location_id, service_type_id: @patient_encounter.service_type_id } }
    end

    assert_redirected_to patient_encounter_url(PatientEncounter.last)
  end

  test "should show patient_encounter" do
    get patient_encounter_url(@patient_encounter)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_encounter_url(@patient_encounter)
    assert_response :success
  end

  test "should update patient_encounter" do
    patch patient_encounter_url(@patient_encounter), params: { patient_encounter: { appointment_id: @patient_encounter.appointment_id, blood_pressure: @patient_encounter.blood_pressure, body_temperature: @patient_encounter.body_temperature, encounter_disposition: @patient_encounter.encounter_disposition, encounter_primary_physician: @patient_encounter.encounter_primary_physician, patient_id: @patient_encounter.patient_id, pulse: @patient_encounter.pulse, random_blood_sugar: @patient_encounter.random_blood_sugar, service_location_id: @patient_encounter.service_location_id, service_type_id: @patient_encounter.service_type_id } }
    assert_redirected_to patient_encounter_url(@patient_encounter)
  end

  test "should destroy patient_encounter" do
    assert_difference('PatientEncounter.count', -1) do
      delete patient_encounter_url(@patient_encounter)
    end

    assert_redirected_to patient_encounters_url
  end
end
