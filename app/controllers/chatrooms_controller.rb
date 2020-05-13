class ChatroomsController < ApplicationController
  before_action :require_user
  def show
    @message = Message.new
    messages = Message.all.order(created_at: :desc)
    @messages = messages.paginate(page: params[:page], per_page: 50)
  end

end
