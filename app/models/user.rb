class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :resumes
  has_many :events
  has_many :favorites
  has_many :favorite_events, through: :favorites, source: :event
  has_many :reviews

  mount_uploader :avatar, AvatarUploader
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

  def is_favorite_of?(event)
    favorite_events.include?(event)
  end

  def favorite!(event)
    favorite_events << event
  end

  def unfavorite!(event)
    favorite_events.delete(event)
  end
end
