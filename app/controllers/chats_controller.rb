class ChatsController < ApplicationController


  def new
    @chats = Chat.all
    @chat = Chat.new
  end

  def create
    @chat = chat.new(text: params[:chat][:text])
  end
end
