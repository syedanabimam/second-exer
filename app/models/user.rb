class User < ActiveRecord::Base
	include ActiveModel::Serialization
	has_many :articles
end