# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  @@resource = nil
  # POST /resource/sign_in
  def create
    super do |resource|
      resource.sign_in_count += 1
      resource.current_sign_in = DateTime.now
      resource.save
      @@resource = resource
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super do
      @@resource.last_sign_in = DateTime.now
      @@resource.current_sign_in = nil
      @@resource.save
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
