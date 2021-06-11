require "application_system_test_case"

class PatientEncountersTest < ApplicationSystemTestCase
  setup do
    @patient_encounter = patient_encounters(:one)
  end

  test "visiting the index" do
    visit patient_encounters_url
    assert_selector "h1", text: "Patient Encounters"
  end

  test "creating a Patient encounter" do
    visit patient_encounters_url
    click_on "New Patient Encounter"

    fill_in "Appointment", with: @patient_encounter.appointment_id
    fill_in "Blood pressure", with: @patient_encounter.blood_pressure
    fill_in "Body temperature", with: @patient_encounter.body_temperature
    fill_in "Encounter disposition", with: @patient_encounter.encounter_disposition
    fill_in "Encounter primary physician", with: @patient_encounter.encounter_primary_physician
    fill_in "Patient", with: @patient_encounter.patient_id
    fill_in "Pulse", with: @patient_encounter.pulse
    fill_in "Random blood sugar", with: @patient_encounter.random_blood_sugar
    fill_in "Service location", with: @patient_encounter.service_location_id
    fill_in "Service type", with: @patient_encounter.service_type_id
    click_on "Create Patient encounter"

    assert_text "Patient encounter was successfully created"
    click_on "Back"
  end

  test "updating a Patient encounter" do
    visit patient_encounters_url
    click_on "Edit", match: :first

    fill_in "Appointment", with: @patient_encounter.appointment_id
    fill_in "Blood pressure", with: @patient_encounter.blood_pressure
    fill_in "Body temperature", with: @patient_encounter.body_temperature
    fill_in "Encounter disposition", with: @patient_encounter.encounter_disposition
    fill_in "Encounter primary physician", with: @patient_encounter.encounter_primary_physician
    fill_in "Patient", with: @patient_encounter.patient_id
    fill_in "Pulse", with: @patient_encounter.pulse
    fill_in "Random blood sugar", with: @patient_encounter.random_blood_sugar
    fill_in "Service location", with: @patient_encounter.service_location_id
    fill_in "Service type", with: @patient_encounter.service_type_id
    click_on "Update Patient encounter"

    assert_text "Patient encounter was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient encounter" do
    visit patient_encounters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient encounter was successfully destroyed"
  end
end
