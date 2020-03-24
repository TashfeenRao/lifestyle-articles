module ApplicationHelper
    include SessionsHelper

    def most_recent(cat)
        @most_recent = cat.articles.order("created_at DESC").limit(1) 
    end
    
    def all_articles
        @art = Article.all
    end
    
    def vote_count(article)
      a = article.votes.count
    end
    
    def vote_devote(article)
        vote = Vote.find_by(user_id: current_user.id,article_id:article.id)
        if vote
            button_to "Devote", {controller: "votes", action: "destroy",id: vote.id,article_id: article.id },method: :delete , class:"btn btn-primary"
        else
         button_to "Vote", {controller: "votes", action: "create",article_id: article.id },method: :post , class:"btn btn-primary"
        end
    end

    def fetch_article
        @article = Article.all
    end

    def article_with_category
        @art_cat = @category.articles
    end
end
