class UserAssessmentsController < APIController
  before_action :set_user_assessment, only: %i[ show update destroy ]

  # GET /user_assessments
  def index
    @user_assessments = UserAssessment.all

    render json: @user_assessments
  end

  # GET /user_assessments/1
  def show
    render json: @user_assessment
  end

  # POST /user_assessments
  def create
    @user_assessment = UserAssessment.new(user_assessment_params)

    if @user_assessment.save
      render json: @user_assessment, status: :created, location: @user_assessment
    else
      render json: @user_assessment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_assessments/1
  def update
    if @user_assessment.update(user_assessment_params)
      render json: @user_assessment
    else
      render json: @user_assessment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_assessments/1
  def destroy
    @user_assessment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_assessment
      @user_assessment = UserAssessment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_assessment_params
      params.require(:user_assessment).permit(:user_id, :assessment_id, :responses, :is_accepted)
    end
end
