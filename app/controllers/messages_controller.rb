class MessagesController < ApplicationController

def create
  message = Message.create message_params
  current_user.messages << message
  resort = Resort.find params[:id]
  resort.message << message
  redirect to resort id
end
