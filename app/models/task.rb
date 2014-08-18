class Task < ActiveRecord::Base

  validates :description, :presence => :true

  scope :done, -> { where(done: true) }

  scope :not_done, -> { where(done: false) }

end


