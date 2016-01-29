class FileStore < ActiveRecord::Base
  mount_uploader :attachment, SpinfileUploader  # Use this uploader for getting the files
  validates :name, :date_loaded, :date_exercised, :attachment, presence: true
end
