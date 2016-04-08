class Worker < ActiveRecord::Base
	validates :name, presence: true
	has_many :operation, :dependent => :delete_all
end
