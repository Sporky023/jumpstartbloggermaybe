class ArticlesController < ApplicationController
    include ArticlesHelper
    
    def index
      @articles = Article.all
    end
    
    def show
      @article = Article.find(params[:id])
      @comment = Comment.new
      @comment.article_id = @article.id

    end
    
    def new
      @article = Article.new
      
    


    end
    
    def create
      @article = Article.new(
        title: params[:article][:title],
        body: params[:article][:body]
      )
      
    

      @article.save
      
      redirect_to article_path(@article)
    end
    
    def create
      @article = Article.new(article_params)
      @article.save
      flash.notice = "Article '#{@article.title}' Create"
      redirect_to article_path(@article)
    end
    
    def destroy
        @article = Article.destroy(params[:id])
        redirect_to article_path(@index)
        #Not sure about this code
    end
    
    def edit
        @article = Article.find(params[:id])
        flash.notice = "Article '#{@article.title}' Edit!!!"
    end
    
    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        flash.notice = "Article '#{@article.title}' Updated!"
        

        redirect_to article_path(@article)
    end
    
end

