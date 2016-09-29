class Api::V1::UserSerializer < Api::V1::BaseSerializer
  attributes :id, :owner_name
  has_many :articles, through: :articles
end
