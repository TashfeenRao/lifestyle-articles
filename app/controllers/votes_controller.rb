class VotesController < ApplicationController
  def create
    vote = current_user.votes.new(article_id: params[:article_id])
    if vote.save
      if params[:category_id]
        redirect_to category_path(params[:category_id]), notice: 'You voted'
      else
        redirect_to article_path(params[:article_id]), notice: 'You voted'
      end
    else
      flash[:danger] = 'You can not vote'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], article_id: params[:article_id], user: current_user)
    return unless vote

    vote.destroy
    if params[:category_id]
      redirect_to category_path(params[:category_id]), notice: 'You voted'
    else
      redirect_to article_path(params[:article_id]), notice: 'You voted'
    end
  end
end
