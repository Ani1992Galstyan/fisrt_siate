class Admin::ArticlesController < ApplicationController
	before_action :find_article, only: %i[show edit update]
	def index
		@articles = Article.all
	end

	def show
	
	end	

	def new

	end	

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to admin_article_path(@article)
		else
			render 'new'		
		end	

	end 
	def edit

	end	
	def update
		if @article.update(article_params)
			redirect_to admin_article_path(@article)
		else
			render 'edit'
		end	
	end

	def destroy
		
	end

	private
	def find_article
      @article = Article.find(params[:id])
    end

	def article_params
		params.require(:article).permit(:title, :body)		
	end	
end
