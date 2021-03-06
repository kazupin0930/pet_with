class MessagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(text: params[:message][:text])
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
    end
  end

  private

  def message_params
    params.require(:message, :text).permit(:text, :image).merge(user_id: current_user.id)
  end
end
