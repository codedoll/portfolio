class ArticlesController < ApplicationController

	  def show
      @user = current_user
    	@article = Article.find(params[:id])
  		end

	def new
      @user = current_user
	end

def create
  @article = Article.new(article_params)
 
  @article.save
  redirect_to @article
end
 
private
  def article_params
    params.require(:article).permit(:title, :text, :username)
  end
  	
end
