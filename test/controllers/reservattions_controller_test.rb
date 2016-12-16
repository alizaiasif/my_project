require 'test_helper'

class ReservattionsControllerTest < ActionController::TestCase
  setup do
    @reservattion = reservattions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservattions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservattion" do
    assert_difference('Reservattion.count') do
      post :create, reservattion: { date: @reservattion.date, patient_id: @reservattion.patient_id, room_id: @reservattion.room_id }
    end

    assert_redirected_to reservattion_path(assigns(:reservattion))
  end

  test "should show reservattion" do
    get :show, id: @reservattion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservattion
    assert_response :success
  end

  test "should update reservattion" do
    patch :update, id: @reservattion, reservattion: { date: @reservattion.date, patient_id: @reservattion.patient_id, room_id: @reservattion.room_id }
    assert_redirected_to reservattion_path(assigns(:reservattion))
  end

  test "should destroy reservattion" do
    assert_difference('Reservattion.count', -1) do
      delete :destroy, id: @reservattion
    end

    assert_redirected_to reservattions_path
  end
end
