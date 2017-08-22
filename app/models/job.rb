class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_upper_bound, presence: true
  scope :paged, -> (page) {paginate(:page => page, :per_page => 10)}
  scope :published, -> {where(:is_hidden => false)}
end
