class ProductsController < ApplicationController


  def index
    @products = Product.all
    search_term = params[:search]

    if search_term
      @products = @products.where("name iLIKE ?", "%#{search_term}%")
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @products = @products.order(sort_attribute => asc)
    end
      render 'index.json.jbuilder'

      #this now does 2 different things depending on what the user has inputted
  end

  def create
    @product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          image_url: params[:image_url],
                          description: params[:description]
                          )
    if @product.save
     render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.on_sale = params[:on_sale] || @product.on_sale
    @product.description = params[:description] || @product.description
    
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    render json: {message: "Congrats, you have succesfully destroyed product ##{product.id}"}    
  end

end










