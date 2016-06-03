class Item < ActiveRecord::Base
	validates :name, presence: true
	validates :itype, presence: true
	validates :stock, presence: true
	has_many :orders
end
