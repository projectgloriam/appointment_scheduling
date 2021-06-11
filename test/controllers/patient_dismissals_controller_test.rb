require 'test_helper'

class PatientDismissalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_dismissal = patient_dismissals(:one)
  end

  test "should get index" do
    get patient_dismissals_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_dismissal_url
    assert_response :success
  end

  test "should create patient_dismissal" do
    assert_difference('PatientDismissal.count') do
      post patient_dismissals_url, params: { patient_dismissal: { status: @patient_dismissal.status } }
    end

    assert_redirected_to patient_dismissal_url(PatientDismissal.last)
  end

  test "should show patient_dismissal" do
    get patient_dismissal_url(@patient_dismissal)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_dismissal_url(@patient_dismissal)
    assert_response :success
  end

  test "should update patient_dismissal" do
    patch patient_dismissal_url(@patient_dismissal), params: { patient_dismissal: { status: @patient_dismissal.status } }
    assert_redirected_to patient_dismissal_url(@patient_dismissal)
  end

  test "should destroy patient_dismissal" do
    assert_difference('PatientDismissal.count', -1) do
      delete patient_dismissal_url(@patient_dismissal)
    end

    assert_redirected_to patient_dismissals_url
  end
end
