class ToysController < ApplicationController
  wrap_parameters format: []

  def index
    toys = Toy.all
    render json: toys
  end

  def create
    toy = Toy.create(toy_params) #FIX TOY SPELLING FROM 'Toys' To 'Toy'  ERROR: NameError (uninitialized constant ToysController::Toys):
    
    render json: toy, status: :created
  end

  def update
    toy = Toy.find_by(id: params[:id])
    
    toy.update(likes: toy.likes + 1) # ADD LIKE FUNCTIONALITY
    render json: toy
  end

  def destroy
    toy = Toy.find_by(id: params[:id])
    toy.destroy
    head :no_content
  end


  


  private
  
  def toy_params
    params.permit(:name, :image, :likes)
  end

end
