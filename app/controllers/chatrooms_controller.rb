class ChatroomsController < ApplicationController
  before_action :require_user
  def show
    @message = Message.new
<<<<<<< HEAD
    messages = Message.all.order(created_at: :desc)
    @messages = messages.paginate(page: params[:page], per_page: 10)
=======
    messages = Message.most_recent
    @messages = messages.paginate(page: params[:page], per_page: 50)
>>>>>>> cbc405b19d33b6a6bd35f26e1e3ec4c023855382
  end

end
