class Api::SuitsController < ApplicationController
  def index
    @suits = Suit.all
    render "index.json.jb"
  end

  def show
    id = params["id"]
    @suit = Suit.find_by(id: id)
    render "show.json.jb"
  end
end
