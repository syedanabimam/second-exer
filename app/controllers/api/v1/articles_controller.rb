class Api::V1::ArticlesController < Api::V1::BaseController

	def show
		article = Article.find(params[:id])
		render(json: Api::V1::ArticleSerializer.new(article).to_json)
	end	

	def index
		articles = Article.all
		 render(
			json: ActiveModel::ArraySerializer.new(
				articles,
				each_serializer: Api::V1::ArticleSerializer,
				root: 'articles',
				)
	    )	
	end

	def articles_owner
		#article = Article.find(params[:id])
		article = Article.where(["user_id = ?", id]).first
		#owner = User.find(params[:user_id])
		render(json: Api::V1::ArticleSerializer.new(article).to_json)	
	end

end