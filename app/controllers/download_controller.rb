class DownloadController < ApplicationController


  def download
    send_file("#{Rails.root}/newriani.png")
  end

end
