class FileStore < ActiveRecord::Base
  has_many :spin_headers
  mount_uploader :attachment, SpinfileUploader  # Use this uploader for getting the files
  validates :description, :date_loaded, :date_exercised, :attachment, presence: true

  after_initialize :init_values

  def init_values
    self.processed = false if self.processed.nil?
  end
end
