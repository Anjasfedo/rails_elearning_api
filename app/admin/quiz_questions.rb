ActiveAdmin.register QuizQuestion do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :quiz_id, :question_text, :correct_answer, :wrong_answer1, :wrong_answer2, :wrong_answer3
  #
  # or
  #
  # permit_params do
  #   permitted = [:quiz_id, :question_text, :correct_answer, :wrong_answer1, :wrong_answer2, :wrong_answer3]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
