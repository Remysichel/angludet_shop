class WinesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @wines = Wine.all
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
