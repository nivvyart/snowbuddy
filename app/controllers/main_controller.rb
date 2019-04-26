class MainController < ApplicationController
  before_action :force_json, only: :autocomplete

def index
end

def search
  @fields = Resort.ransack(name_cont: params[:q]).result(distinct: true)#.limit(3)
  @region = Resort.ransack(region_cont: params[:q]).result(distinct: true)#.limit(3)

  respond_to do |format|
    format.html {}
    format.json {
      @fields = @fields.limit(3)
      @region = @region.limit(3)
    }

    end
  end
end
