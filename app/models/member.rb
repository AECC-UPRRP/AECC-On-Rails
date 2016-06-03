class Member < ActiveRecord::Base
	validates :fname, presence: true
	validates :email, presence: true
end
