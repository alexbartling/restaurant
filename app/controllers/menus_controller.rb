class MenusController < ApplicationController
  def index
  end

  def show
    @menu = Menu.find_by_id params[:id]
  end
end
