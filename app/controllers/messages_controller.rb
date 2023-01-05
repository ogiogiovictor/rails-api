class MessagesController < ApplicationController
  def index
    @message = Message.limit(2).order('RANDOM()')

    render json: @message, status: :ok
  end
end
