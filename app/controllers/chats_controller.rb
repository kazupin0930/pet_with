class ChatsController < ApplicationController


  def index
    @chat = Chat.all.order(id: "DESC")
  end

  def create
    chat = Chat.create(text: params[:text], checked: false)
    render json:{ chat: chat }
  end

  def checked
    chat = chat.find(params[:id])
    if chat.checked
      chat.update(checked: false)
    else
      chat.update(checked: true)
    end
    item = Post.find(params[:id])
    render json: { chat: item }
  end
end
