class Event < ApplicationRecord
  validates :title, :description, :address, :start_time, :end_time, presence: true

  belongs_to :category, :optional => true
  belongs_to :user, :dependent => :destroy
  mount_uploader :logo, EventlogoUploader

  # status of events
  STATUS = ["preparing", "processing", "over"]
  validates_inclusion_of :status, :in => STATUS
end
