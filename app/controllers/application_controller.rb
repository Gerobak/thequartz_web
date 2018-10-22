class ApplicationController < ActionController::Base

  def download
    send_file("#{Rails.root}/public/newriani.jpg")
  end

  def after_sign_out_path_for(resource_or_scope)
    home_path
  end

end
