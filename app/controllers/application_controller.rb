class ApplicationController < ActionController::Base
  def current_account
    current_user&.account
  end
  helper_method :current_account
  def after_sign_in_path_for(account)
    if current_account
      root_path
    else
      new_account_path
    end
  end
end
