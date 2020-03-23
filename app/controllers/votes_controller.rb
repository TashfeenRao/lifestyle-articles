class VotesController < ApplicationController

    def create
        vote = current_user.votes.new(article_id:params[:article_id])
        if vote.save
            redirect_to category_path(vote.article.category.id), notice: "You voted"
        else
            redirect_to category_path(vote.article.category.id), notice: "You can not vote"
        end
    end

    def destroy
        vote = Vote.find_by(id: params[:id],article_id:params[:article_id],user: current_user)
        if vote
            vote.destroy
            redirect_to category_path(vote.article.category.id)
        else
            redirect_to category_path(vote.article.category.id)
        end
    end
end
