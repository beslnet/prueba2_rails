class Inventory < ActiveRecord::Base
	validates :sku, presence: true, uniqueness: {message: "Ya existe ese SKU"}
	has_one :operation, :dependent => :delete

	
	scope :recent, lambda { where('published_at >= ?', Time.now - 1.week) }

end
