class Event < ApplicationRecord
  validates :title, :logo, :status, :description, :presence => true, :on => :create
  validates :start_time, :end_time, :city, :province,:address, :sponsor,:limited_num, :presence => true, :on => :create
  validate :start_time_early_than_end_time

  belongs_to :category, :optional => true
  belongs_to :user, :dependent => :destroy
  mount_uploader :logo, EventlogoUploader

  has_many :favorites
  has_many :fans, through: :favorites, source: :user

  has_many :reviews

  has_many :likes, :dependent => :destroy
  has_many :liked_users, :through => :likes, :source => :user

  has_many :apply_events
  has_many :appliers, :through => :apply_events, :source => :user

  def find_like(user)
    self.likes.where(:user_id => user.id).first
  end


  # logic check between start_time and end_time

  def start_time_early_than_end_time
    if self.start_time.present? && self.end_time.present?
      if self.start_time >= self.end_time
        errors.add(:end_time, "结束时间不得小于开始时间")
      end
    end
  end


  # status of events
  STATUS = ["preparing", "processing", "over"]
  validates_inclusion_of :status, :in => STATUS

  # scope

  scope :by_category, ->(c){where( :category_id => c )}
  scope :by_city, ->(c){where( :city => c )}
  scope :by_paged, ->(p){paginate(:page => p, :per_page => 12)}
end
