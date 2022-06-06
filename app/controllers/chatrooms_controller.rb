class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new()
    @messages = Message.custom_display
    @users = User.where.not(username: current_user.username)
  end
end
