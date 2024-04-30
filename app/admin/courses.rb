ActiveAdmin.register Course do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :category, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :category, :creation_date, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs 'Course Details' do
      f.input :title
      f.input :description
      f.input :category
      f.input :status, as: :select, collection: Course.statuses.keys
    end
    f.actions
  end
end
