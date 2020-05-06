class PagesController < ApplicationController

  def home
    redirect_to chat_path if logged_in?
  end

end
