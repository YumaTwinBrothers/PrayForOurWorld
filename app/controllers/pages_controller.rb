class PagesController < ApplicationController

  def home
    messages = Message.all
    @number = messages.length
    redirect_to chat_path if logged_in?
  end

end
