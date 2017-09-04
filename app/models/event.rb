class Event < ApplicationRecord
  belongs_to :category, :optional => true
  belongs_to :user, :dependent => :destroy
end
