class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end



  def show
    @chatroom = Chatroom.where( )
    @message = Message.new
  end
end
