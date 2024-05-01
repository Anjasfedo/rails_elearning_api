ActiveAdmin.register UserQuiz do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :quiz_question_id, :is_correct
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :quiz_question_id, :is_correct]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # ! Show Question Text on Quiz Question input
  form do |f|
    f.inputs 'Quiz Question Details' do
      f.input :user_id, as: :select, collection: User.all.map { |user| [user.username, user.id] }
      f.input :quiz_question_id, as: :select, collection: QuizQuestion.all.map { |quiz_question|
                                                            [quiz_question.question_text, quiz_question.id]
                                                          }
      f.input :is_correct
    end
    f.actions
  end
end
