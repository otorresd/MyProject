class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now
    @count = increment_count
    @show_count = "You are ben here #{@count} times" if @count > 5
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
