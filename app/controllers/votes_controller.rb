class VotesController < ApplicationController
  def create
    vote = current_user.votes.new(article_id: params[:article_id])
    cat = vote.article.category.id
    if vote.save
      redirect_to category_path(cat), notice: 'You voted'
    else
      flash[:danger] = 'You can not vote'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], article_id: params[:article_id], user: current_user)
    return unless vote

    vote.destroy
    redirect_to category_path(vote.article.category.id)
  end
end
