ActiveAdmin.register Enrollment do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :course_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :course_id, :progress]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # ! Hide percent column
  form do |f|
    f.inputs 'Enrollment Details' do
      f.input :user_id, as: :select, collection: User.all.map { |user| [user.username, user.id] }
      f.input :course_id, as: :select, collection: Course.all.map { |course| [course.title, course.id] }
    end
    f.actions
  end
end
