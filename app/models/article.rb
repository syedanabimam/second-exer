class Article < ActiveRecord::Base
	include ActiveModel::Serialization
	belongs_to :user
	#validates :description, presence: true
end
