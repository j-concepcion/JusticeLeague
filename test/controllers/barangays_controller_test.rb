require 'test_helper'

class BarangaysControllerTest < ActionController::TestCase
  setup do
    @barangay = barangays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay" do
    assert_difference('Barangay.count') do
      post :create, barangay: { name: @barangay.name }
    end

    assert_redirected_to barangay_path(assigns(:barangay))
  end

  test "should show barangay" do
    get :show, id: @barangay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay
    assert_response :success
  end

  test "should update barangay" do
    patch :update, id: @barangay, barangay: { name: @barangay.name }
    assert_redirected_to barangay_path(assigns(:barangay))
  end

  test "should destroy barangay" do
    assert_difference('Barangay.count', -1) do
      delete :destroy, id: @barangay
    end

    assert_redirected_to barangays_path
  end
end
