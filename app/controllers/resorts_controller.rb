class ResortsController < ApplicationController
  def index
    @resorts = Resort.all

  end

  def show
    @resort = Resort.find params[:id]
    @message = Message.all
  # raise 'hell'
  end
end
