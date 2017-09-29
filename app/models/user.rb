class User < ApplicationRecord
	has_many :posts
	has_many :fors
	has_many :againsts
	class << self
  		def from_omniauth(auth_hash)
  			# where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    			user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
		    	user.name = auth_hash['info']['name']
		    	user.image_url = auth_hash['info']['image']
		    	user.url = auth_hash['info']['urls'][user.provider.capitalize]
		    	user.save!
		    	user
		    # end
  		end
	end
end
