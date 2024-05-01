class UserQuizzesController < APIController
  before_action :set_user_quiz, only: %i[ show update destroy ]

  # GET /user_quizzes
  def index
    @user_quizzes = UserQuiz.all

    render json: @user_quizzes
  end

  # GET /user_quizzes/1
  def show
    render json: @user_quiz
  end

  # POST /user_quizzes
  def create
    @user_quiz = UserQuiz.new(user_quiz_params)

    if @user_quiz.save
      render json: @user_quiz, status: :created, location: @user_quiz
    else
      render json: @user_quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_quizzes/1
  def update
    if @user_quiz.update(user_quiz_params)
      render json: @user_quiz
    else
      render json: @user_quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_quizzes/1
  def destroy
    @user_quiz.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_quiz
      @user_quiz = UserQuiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_quiz_params
      params.require(:user_quiz).permit(:user_id, :quiz_question_id, :is_correct)
    end
end
