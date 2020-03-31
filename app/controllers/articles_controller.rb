class ArticlesController < ApplicationController
  def new
    @article = Article.new
    @categories = Category.all.map { |cat| [cat.name, cat.id] }
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
     redirect_to root_path
      flash[:success] = 'Article has been published'
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image,category_ids:[] )
  end
end
