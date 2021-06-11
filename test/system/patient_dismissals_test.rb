require "application_system_test_case"

class PatientDismissalsTest < ApplicationSystemTestCase
  setup do
    @patient_dismissal = patient_dismissals(:one)
  end

  test "visiting the index" do
    visit patient_dismissals_url
    assert_selector "h1", text: "Patient Dismissals"
  end

  test "creating a Patient dismissal" do
    visit patient_dismissals_url
    click_on "New Patient Dismissal"

    fill_in "Status", with: @patient_dismissal.status
    click_on "Create Patient dismissal"

    assert_text "Patient dismissal was successfully created"
    click_on "Back"
  end

  test "updating a Patient dismissal" do
    visit patient_dismissals_url
    click_on "Edit", match: :first

    fill_in "Status", with: @patient_dismissal.status
    click_on "Update Patient dismissal"

    assert_text "Patient dismissal was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient dismissal" do
    visit patient_dismissals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient dismissal was successfully destroyed"
  end
end
