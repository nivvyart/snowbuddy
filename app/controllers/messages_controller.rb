class MessagesController < ApplicationController

  def create
    message = Message.create message_params
    current_user.messages << message
    resort = Resort.find params[:resort_id]
    resort.messages << message
    redirect_to resort
  end


  private
  def message_params
    params.require(:message).permit(:message)
  end
end
