class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # ログインした後のルートパス
  def after_sign_in_path_for(resource)
    if user_signed_in?
      user_movies_path(resource)
    else
      admin_movies_path
    end
  end

  # sign_out後のredirect先変更する。rootパスへ。rootパスはhomes topを設定済み。
  def after_sign_out_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
