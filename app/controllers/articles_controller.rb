class ArticlesController < ApplicationController
	def new
		@article = Article.new
		@article.title = 'TEST'
	end

	def create
		@article = Article.create(title: params[:article][:title])
		render json: @article
	end
end
