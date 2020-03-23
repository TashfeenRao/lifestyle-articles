class VotesController < ApplicationController

    def create
        vote = current_user.votes.new(article_id:params[:article_id])
        if vote.save
            redirect_to category_path, notice: "You voted"
        else
            redirect_to category_path, notice: "You can not vote"
        end
    end

    def destroy
    end
end
