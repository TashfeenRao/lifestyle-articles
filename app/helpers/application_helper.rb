module ApplicationHelper
    include SessionsHelper

    def vote_devote(article)
        vote = Vote.find_by(user_id: current_user.id,article_id:article.id)
        if vote
            link_to('Delete Vote', article_vote_path(id: vote.id, article_id: article.id), method: :delete)
        else
            link_to('Vote', article_vote_path(article_id: article.id), method: :post)
        end
    end

    def fetch_article
        @article = Article.all
    end

    def article_with_category
        @art_cat = @category.articles
    end
end
