class Api::SuitsController < ApplicationController
  def index
    @suits = Suit.all
    render "index.json.jb"
  end
end
