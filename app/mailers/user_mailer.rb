class UserMailer < ApplicationMailer
    def new_user_email
        @user = params[:user]
        
        mail(to: @user.email, subject: default_i18n_subject(user: @user.name))
    end
end
