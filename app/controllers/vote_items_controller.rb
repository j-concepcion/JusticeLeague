class VoteItemsController < ApplicationController
  before_action :set_vote_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vote_items = VoteItem.all
    respond_with(@vote_items)
  end

  def show
    respond_with(@vote_item)
  end

  def new
    @vote_item = VoteItem.new
    respond_with(@vote_item)
  end

  def edit
  end

  def create
    @vote_item = VoteItem.new(vote_item_params)
    @vote_item.save
    respond_with(@vote_item)
  end

  def update
    @vote_item.update(vote_item_params)
    respond_with(@vote_item)
  end

  def destroy
    @vote_item.destroy
    respond_with(@vote_item)
  end

  private
    def set_vote_item
      @vote_item = VoteItem.find(params[:id])
    end

    def vote_item_params
      params.require(:vote_item).permit(:candidate_id)
    end
end
