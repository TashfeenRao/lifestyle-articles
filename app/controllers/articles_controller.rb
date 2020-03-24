class ArticlesController < ApplicationController
    def new
        @article = Article.new
        @categories = Category.all.map  { |cat| [cat.name, cat.id] }
    end

    def create
      @article = current_user.articles.new(article_params)
      @article.category_id = params[:category_id]
      if @article.save
        redirect_to root_path
        flash[:success] = "Article has been published"
      else
        render 'new'
      end
    end

    def show
      @Article = Article.find(params[:id])
  end

    def article_params
        params.require(:article).permit(:title,:text,:image)
    end
end
