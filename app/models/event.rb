class Event < ApplicationRecord
  validates :title, :logo, :status, :description, :start_time, :end_time, :city, :address, :sponsor,:limited_num, presence: true

  belongs_to :category, :optional => true
  belongs_to :user, :dependent => :destroy
  mount_uploader :logo, EventlogoUploader
  has_many :favorites
  has_many :fans, through: :favorites, source: :user
  has_many :reviews

  has_many :likes, :dependent => :destroy
  has_many :liked_users, :through => :likes, :source => :user

  def find_like(user)
    self.likes.where(:user_id => user.id).first
  end


  # status of events
  STATUS = ["preparing", "processing", "over"]
  validates_inclusion_of :status, :in => STATUS

  scope :by_category, ->(c){where( :category_id => c )}
  scope :by_city, ->(c){where( :city => c )}
  scope :by_paged, ->(p){}
end
