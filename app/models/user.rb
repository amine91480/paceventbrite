class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  has_many :administrated_events, class_name: 'Event', foreign_key: 'admin_id'
end
