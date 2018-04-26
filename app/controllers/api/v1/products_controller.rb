class Api::V1::ProductsController < ApplicationController

    def index
      products=Product.all
      render json: products      
    end

  private

  def product_params
    params.require(:product).permit(:name,:price)
  end

end