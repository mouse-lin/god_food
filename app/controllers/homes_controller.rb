class HomesController < ApplicationController
  def index
    @foods = Food.paginate(:page => params[:page], :per_page => 10)
  end
end
