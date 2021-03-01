class Api::SuitsController < ApplicationController
  def index
    @suits = Suit.all
    render "index.json.jb"
  end

  def create
    @suit = Suit.new(
      id: params["id"],
      brand: params["brand"],
      color: params["color"],
      size: params["size"],
      price: params["price"],
    )
    @suit.save
    render "show.json.jb"
  end

  def show
    id = params["id"]
    @suit = Suit.find_by(id: id)
    render "show.json.jb"
  end

  def destroy
    id = params["id"]
    suit = Suit.find_by(id: id)
    suit.destroy
    render json: { messsage: "The item has been removed" }
  end
end
