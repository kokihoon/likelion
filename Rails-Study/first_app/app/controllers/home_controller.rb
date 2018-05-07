class HomeController < ApplicationController
  def index
    # render html: "당신은 #{request.remote_ip} 로 접속하였습니다. "
    @box = request.remote_ip
  end
end
