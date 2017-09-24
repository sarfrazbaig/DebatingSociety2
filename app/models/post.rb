class Post < ApplicationRecord
	has_many :fors, dependent: :destroy
	has_many :againsts, dependent: :destroy
end
