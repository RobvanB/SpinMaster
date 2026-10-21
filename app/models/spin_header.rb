class SpinHeader < ActiveRecord::Base
  has_many :spin_entries
  belongs_to :file_store
end
