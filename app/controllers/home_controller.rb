class HomeController < ApplicationController

  def index
    @items = []
    Todo.all.each {|todo| @items.push todo.item}
    @items
  end

  def add
    Todo.create(item: params[:item])
    redirect_to '/'
  end

  def remove
    Todo.find_by(item: params[:item]).destroy
    redirect_to '/'
  end

end
