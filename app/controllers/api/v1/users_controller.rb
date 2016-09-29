class Api::V1::UsersController < Api::V1::BaseController
  #include ActiveHashRelation

  def index
    owners = User.select('users.owner_name') 
    render(
      json: ActiveModel::ArraySerializer.new(
        owners,
        each_serializer: Api::V1::UserSerializer,
        root: 'owners'
      )
    )
  end 

  
  def show
    user = User.find(params[:id])
    render(json: Api::V1::UserSerializer.new(user).to_json)
  end

  def search
  	user = User.where("owner_name ILIKE ?", params[:query])
  	render(json: Api::V1::UserSerializer.new(user).to_json)
  end  

  def articles
  	article = Article.where(["user_id = ?", :id])
  	render(json: Api::V1::UserSerializer.new(article).to_json)
  end
  
end
