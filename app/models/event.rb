class Event < ApplicationRecord
  belongs_to :category, :optional => true
  belongs_to :user, :dependent => :destroy
  mount_uploader :logo, EventlogoUploader
end
