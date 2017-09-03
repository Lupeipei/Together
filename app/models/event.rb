class Event < ApplicationRecord
  belongs_to :category, :optional => true
end
