require 'test_helper'

class TratmentsControllerTest < ActionController::TestCase
  setup do
    @tratment = tratments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tratments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tratment" do
    assert_difference('Tratment.count') do
      post :create, tratment: { Amount: @tratment.Amount, data: @tratment.data, doctor_id: @tratment.doctor_id, patient_id: @tratment.patient_id }
    end

    assert_redirected_to tratment_path(assigns(:tratment))
  end

  test "should show tratment" do
    get :show, id: @tratment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tratment
    assert_response :success
  end

  test "should update tratment" do
    patch :update, id: @tratment, tratment: { Amount: @tratment.Amount, data: @tratment.data, doctor_id: @tratment.doctor_id, patient_id: @tratment.patient_id }
    assert_redirected_to tratment_path(assigns(:tratment))
  end

  test "should destroy tratment" do
    assert_difference('Tratment.count', -1) do
      delete :destroy, id: @tratment
    end

    assert_redirected_to tratments_path
  end
end
