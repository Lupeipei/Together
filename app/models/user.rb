class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :events

  has_many :reviews

  has_many :apply_events
  has_many :applied_events, through: :apply_events, source: :event

  has_many :favorites
  has_many :favorite_events, through: :favorites, source: :event

  has_many :likes, :dependent => :destroy
  has_many :liked_events, :through => :likes, :source => :event

  mount_uploader :avatar, AvatarUploader

  after_validation :generate_username, :on => :create


  def admin?
    self.is_admin
  end

  def display_name
    if self.username.present?
      self.username
    else
      self.email.split("@").first
    end
  end

  def generate_username
    if self.username.blank?
      self.username = self.email.split("@").first
    end
  end

  def is_favorite_of?(event)
    favorite_events.include?(event)
  end

  def favorite!(event)
    favorite_events << event
  end

  def unfavorite!(event)
    favorite_events.delete(event)
  end

  def apply_already?(event)
    applied_events.include?(event)
  end

  def apply!(event)
    unless applied_events.include?(event)
      applied_events << event
    end
  end

  def cancel!(event)
    applied_events.delete(event)
  end
end
