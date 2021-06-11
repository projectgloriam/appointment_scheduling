require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Nhis id", with: @patient.NHIS_ID
    fill_in "Address", with: @patient.address
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Date of first registration", with: @patient.date_of_first_registration
    fill_in "Ethnicity", with: @patient.ethnicity
    fill_in "First name", with: @patient.first_name
    fill_in "Gender", with: @patient.gender
    fill_in "Last name", with: @patient.last_name
    fill_in "National id", with: @patient.national_ID
    fill_in "Previous names", with: @patient.previous_names
    fill_in "Race", with: @patient.race
    fill_in "Telephone number", with: @patient.telephone_number
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Nhis id", with: @patient.NHIS_ID
    fill_in "Address", with: @patient.address
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Date of first registration", with: @patient.date_of_first_registration
    fill_in "Ethnicity", with: @patient.ethnicity
    fill_in "First name", with: @patient.first_name
    fill_in "Gender", with: @patient.gender
    fill_in "Last name", with: @patient.last_name
    fill_in "National id", with: @patient.national_ID
    fill_in "Previous names", with: @patient.previous_names
    fill_in "Race", with: @patient.race
    fill_in "Telephone number", with: @patient.telephone_number
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
