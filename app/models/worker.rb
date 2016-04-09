class Worker < ActiveRecord::Base
	validates :name, presence: true
	has_many :operations, :dependent => :delete_all
end
