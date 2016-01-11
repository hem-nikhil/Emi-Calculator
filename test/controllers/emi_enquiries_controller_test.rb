require 'test_helper'

class EmiEnquiriesControllerTest < ActionController::TestCase
  setup do
    @emi_enquiry = emi_enquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emi_enquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emi_enquiry" do
    assert_difference('EmiEnquiry.count') do
      post :create, emi_enquiry: { integer: @emi_enquiry.integer, number_of_months: @emi_enquiry.number_of_months, principal_amount: @emi_enquiry.principal_amount, rate_of_intrest: @emi_enquiry.rate_of_intrest }
    end

    assert_redirected_to emi_enquiry_path(assigns(:emi_enquiry))
  end

  test "should show emi_enquiry" do
    get :show, id: @emi_enquiry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emi_enquiry
    assert_response :success
  end

  test "should update emi_enquiry" do
    patch :update, id: @emi_enquiry, emi_enquiry: { integer: @emi_enquiry.integer, number_of_months: @emi_enquiry.number_of_months, principal_amount: @emi_enquiry.principal_amount, rate_of_intrest: @emi_enquiry.rate_of_intrest }
    assert_redirected_to emi_enquiry_path(assigns(:emi_enquiry))
  end

  test "should destroy emi_enquiry" do
    assert_difference('EmiEnquiry.count', -1) do
      delete :destroy, id: @emi_enquiry
    end

    assert_redirected_to emi_enquiries_path
  end
end
