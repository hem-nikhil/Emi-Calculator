require 'test_helper'

class LoanEnquiriesControllerTest < ActionController::TestCase
  setup do
    @loan_enquiry = loan_enquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_enquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_enquiry" do
    assert_difference('LoanEnquiry.count') do
      post :create, loan_enquiry: { months: @loan_enquiry.months, principal_amount: @loan_enquiry.principal_amount, rate_of_intrest: @loan_enquiry.rate_of_intrest }
    end

    assert_redirected_to loan_enquiry_path(assigns(:loan_enquiry))
  end

  test "should show loan_enquiry" do
    get :show, id: @loan_enquiry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan_enquiry
    assert_response :success
  end

  test "should update loan_enquiry" do
    patch :update, id: @loan_enquiry, loan_enquiry: { months: @loan_enquiry.months, principal_amount: @loan_enquiry.principal_amount, rate_of_intrest: @loan_enquiry.rate_of_intrest }
    assert_redirected_to loan_enquiry_path(assigns(:loan_enquiry))
  end

  test "should destroy loan_enquiry" do
    assert_difference('LoanEnquiry.count', -1) do
      delete :destroy, id: @loan_enquiry
    end

    assert_redirected_to loan_enquiries_path
  end
end
