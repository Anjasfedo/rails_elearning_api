require "test_helper"

class AssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assessment = assessments(:one)
  end

  test "should get index" do
    get assessments_url, as: :json
    assert_response :success
  end

  test "should create assessment" do
    assert_difference("Assessment.count") do
      post assessments_url, params: { assessment: { course_id: @assessment.course_id, description: @assessment.description, task: @assessment.task, title: @assessment.title } }, as: :json
    end

    assert_response :created
  end

  test "should show assessment" do
    get assessment_url(@assessment), as: :json
    assert_response :success
  end

  test "should update assessment" do
    patch assessment_url(@assessment), params: { assessment: { course_id: @assessment.course_id, description: @assessment.description, task: @assessment.task, title: @assessment.title } }, as: :json
    assert_response :success
  end

  test "should destroy assessment" do
    assert_difference("Assessment.count", -1) do
      delete assessment_url(@assessment), as: :json
    end

    assert_response :no_content
  end
end
