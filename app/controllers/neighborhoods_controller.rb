class NeighborhoodsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

def index
  @neighborhoods = Neighborhood.all
end

def show
    #  @neighborhood = Neighborhood.find(params[:id])
end


private
def neighborhood_params
  params.require(:neighborhood).permit(:title, :description)
end

def set_post
  @neighborhood = Neighborhood.find(params[:id])
end
end