class ListsController < ApplicationController
  def index
    # implicitly render index.html.erb
    @lists = List.all
    @list = List.new
  end

  def show
    # i need to load the list
    # which list?
    # params has all the data passed by a user
    find_list
  end

  def create
    @list = List.new
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_path(@list)
  end


  private

  def find_list
    @list = List.find(params[:id])
  end
end
