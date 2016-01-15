class ApiController < ApplicationController
  def index
    user = User.first
    render :json => {:results => user.things}
  end
end
