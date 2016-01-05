class StoreController < ApplicationController
  def index
    # here we reference it by using the name of the class of the objects.
    # then you call a class method of order, grabbing the order by the title.
    @products = Product.order(:title)
  end
end
