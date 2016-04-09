class Inventory < ActiveRecord::Base
	validates :sku, presence: true, uniqueness: {message: "Ya existe ese SKU"}
	has_one :operation, :dependent => :delete
	after_destroy { |record| logger.info( "Operation #{record.sku} was destroyed." ) }

	
	scope :recent, lambda { where('published_at >= ?', Time.now - 1.week) }

end
