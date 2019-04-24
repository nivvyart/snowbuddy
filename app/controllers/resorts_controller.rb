class ResortsController < ApplicationController
  def index
    @resorts = Resort.all

  end

  def show
    @resort = Resort.find params[:id]
  # raise 'hell'
  end
end
