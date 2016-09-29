class Api::V1::ArticleSerializer < Api::V1::BaseSerializer
  attributes :id, :name, :price, :description, :user_id
  #has_one :user
end