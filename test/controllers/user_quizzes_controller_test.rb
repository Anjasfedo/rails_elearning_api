require "test_helper"

class UserQuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_quiz = user_quizzes(:one)
  end

  test "should get index" do
    get user_quizzes_url, as: :json
    assert_response :success
  end

  test "should create user_quiz" do
    assert_difference("UserQuiz.count") do
      post user_quizzes_url, params: { user_quiz: { is_correct: @user_quiz.is_correct, quiz_question_id: @user_quiz.quiz_question_id, user_id: @user_quiz.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show user_quiz" do
    get user_quiz_url(@user_quiz), as: :json
    assert_response :success
  end

  test "should update user_quiz" do
    patch user_quiz_url(@user_quiz), params: { user_quiz: { is_correct: @user_quiz.is_correct, quiz_question_id: @user_quiz.quiz_question_id, user_id: @user_quiz.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy user_quiz" do
    assert_difference("UserQuiz.count", -1) do
      delete user_quiz_url(@user_quiz), as: :json
    end

    assert_response :no_content
  end
end
