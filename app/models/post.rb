class Post < ApplicationRecord
  	validates :user, presence: true
	has_many :fors, dependent: :destroy
	has_many :againsts, dependent: :destroy
	belongs_to :user, optional: true
end
