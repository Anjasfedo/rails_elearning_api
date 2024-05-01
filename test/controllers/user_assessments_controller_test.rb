require "test_helper"

class UserAssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_assessment = user_assessments(:one)
  end

  test "should get index" do
    get user_assessments_url, as: :json
    assert_response :success
  end

  test "should create user_assessment" do
    assert_difference("UserAssessment.count") do
      post user_assessments_url, params: { user_assessment: { assessment_id: @user_assessment.assessment_id, is_accepted: @user_assessment.is_accepted, responses: @user_assessment.responses, user_id: @user_assessment.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show user_assessment" do
    get user_assessment_url(@user_assessment), as: :json
    assert_response :success
  end

  test "should update user_assessment" do
    patch user_assessment_url(@user_assessment), params: { user_assessment: { assessment_id: @user_assessment.assessment_id, is_accepted: @user_assessment.is_accepted, responses: @user_assessment.responses, user_id: @user_assessment.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy user_assessment" do
    assert_difference("UserAssessment.count", -1) do
      delete user_assessment_url(@user_assessment), as: :json
    end

    assert_response :no_content
  end
end
