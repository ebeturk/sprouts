class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
    ChatroomChannel.broadcast_to(@chatroom, {action: 'deleted'})
    redirect_to chatrooms_path, notice: 'Chatroom was successfully deleted.'
  end
end
