class Operation < ActiveRecord::Base
  belongs_to :worker
  belongs_to :inventory
end
