require 'test_helper'

class FundedLoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funded_loan = funded_loans(:one)
  end

  test "should get index" do
    get funded_loans_url
    assert_response :success
  end

  test "should get new" do
    get new_funded_loan_url
    assert_response :success
  end

  test "should create funded_loan" do
    assert_difference('FundedLoan.count') do
      post funded_loans_url, params: { funded_loan: { loan_amount.string: @funded_loan.loan_amount.string, loan_position.string: @funded_loan.loan_position.string, loan_to_cost.string: @funded_loan.loan_to_cost.string, property_type.text: @funded_loan.property_type.text, purpose.string: @funded_loan.purpose.string, term.string: @funded_loan.term.string, term.string: @funded_loan.term.string, title.string: @funded_loan.title.string } }
    end

    assert_redirected_to funded_loan_url(FundedLoan.last)
  end

  test "should show funded_loan" do
    get funded_loan_url(@funded_loan)
    assert_response :success
  end

  test "should get edit" do
    get edit_funded_loan_url(@funded_loan)
    assert_response :success
  end

  test "should update funded_loan" do
    patch funded_loan_url(@funded_loan), params: { funded_loan: { loan_amount.string: @funded_loan.loan_amount.string, loan_position.string: @funded_loan.loan_position.string, loan_to_cost.string: @funded_loan.loan_to_cost.string, property_type.text: @funded_loan.property_type.text, purpose.string: @funded_loan.purpose.string, term.string: @funded_loan.term.string, term.string: @funded_loan.term.string, title.string: @funded_loan.title.string } }
    assert_redirected_to funded_loan_url(@funded_loan)
  end

  test "should destroy funded_loan" do
    assert_difference('FundedLoan.count', -1) do
      delete funded_loan_url(@funded_loan)
    end

    assert_redirected_to funded_loans_url
  end
end
