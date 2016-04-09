class Operation < ActiveRecord::Base
  belongs_to :worker
  belongs_to :inventory

  scope :all_firstwork, -> { where(worker_id: 1)}
  scope :last5, -> { order('id desc limit 5').reverse}
  scope :recent, lambda { where('created_at >= ?', Time.now - 1.day) }
  #scope :unused, -> { where()}
end
