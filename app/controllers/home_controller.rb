class HomeController < ApplicationController
  def index
    @items = ["Adopt a cat", "Buy a dog", "???", "Profit"]
  end
end
