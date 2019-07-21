class PokerController < ApplicationController
  helper :application
  def index
  end
  def create
    @suits = ['Гил', 'Бунд', 'Дөрвөлжин', 'Цэцэг']
    @numbers = ['1','2','3','4','5','6','7','8','9','10','11','12','13']
    @hos = ['High Card', 'Pair', 'Two Pair', 'Three of a kind', 'Straight', 'Flush', 'Full house', 'Four of a kind', 'Straight flush']

    @card = params[:card]
    if @card
      render :index
    else 
      redirect_to poker_index_path
    end
  end
end