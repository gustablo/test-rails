class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def show
        @product = Product.find(params[:id])
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        
        respond_to do |format|
            if @product.update(p_params)
                format.html { redirect_to products_url }
            else
                format.html { render :edit, status: unprocessable_entity }
            end
        end
    end

    def save
        @product = Product.new(p_params)

        respond_to do |format|
            if @product.save
                format.html { redirect_to products_url }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    private

    def p_params
        params.require(:product).permit(:name, :price)
    end
end
