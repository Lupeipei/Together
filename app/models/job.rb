class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, numericality: {greater_than: 0}
  validate :upper_bound_cannot_less_than_lower_bound
  scope :paged, -> (page) {paginate(:page => page, :per_page => 10)}
  scope :published, -> {where(:is_hidden => false)}

  def upper_bound_cannot_less_than_lower_bound
    if self.wage_upper_bound <= self.wage_lower_bound
      errors.add(:wage_upper_bound, "can't be less than wage_lower_bound")
    end
  end

end
