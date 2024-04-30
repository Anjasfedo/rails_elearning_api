ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :username, :email, :password, :first_name, :last_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:username, :email, :password, :first_name, :last_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs 'User Details' do
      f.input :username
      f.input :email
      f.input :password
      f.input :first_name
      f.input :last_name
    end
    f.actions
  end

  controller do
    def update
      # If password field is blank, remove it from the permitted parameters
      if params[:user][:password].blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end
      super
    end
  end
end
