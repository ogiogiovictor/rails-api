class MessagesController < ApplicationController

    def index

        #@message = Message..order("RANDOM()").first
        # @message = Message.order("RAND()").limit(1)
        @message = Message.limit(2).order("RANDOM()")
        #json_response(@message)
        render json: @message, status: :ok
    end

end