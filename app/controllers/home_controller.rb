class HomeController < ApplicationController

  def index
    @items = []
    Todo.all.each {|todo| @items.push todo.item}
    @items
  end
end
