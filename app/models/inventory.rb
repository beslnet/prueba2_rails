class Inventory < ActiveRecord::Base
	validates :sku, presence: true, uniqueness: {case_sensitive: false ,message: "Ya existe ese SKU"}
	
end
