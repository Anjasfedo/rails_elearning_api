require "test_helper"

class QuizQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_question = quiz_questions(:one)
  end

  test "should get index" do
    get quiz_questions_url, as: :json
    assert_response :success
  end

  test "should create quiz_question" do
    assert_difference("QuizQuestion.count") do
      post quiz_questions_url, params: { quiz_question: { correct_answer: @quiz_question.correct_answer, question_text: @quiz_question.question_text, quiz_id: @quiz_question.quiz_id, wrong_answer1: @quiz_question.wrong_answer1, wrong_answer2: @quiz_question.wrong_answer2, wrong_answer3: @quiz_question.wrong_answer3 } }, as: :json
    end

    assert_response :created
  end

  test "should show quiz_question" do
    get quiz_question_url(@quiz_question), as: :json
    assert_response :success
  end

  test "should update quiz_question" do
    patch quiz_question_url(@quiz_question), params: { quiz_question: { correct_answer: @quiz_question.correct_answer, question_text: @quiz_question.question_text, quiz_id: @quiz_question.quiz_id, wrong_answer1: @quiz_question.wrong_answer1, wrong_answer2: @quiz_question.wrong_answer2, wrong_answer3: @quiz_question.wrong_answer3 } }, as: :json
    assert_response :success
  end

  test "should destroy quiz_question" do
    assert_difference("QuizQuestion.count", -1) do
      delete quiz_question_url(@quiz_question), as: :json
    end

    assert_response :no_content
  end
end
