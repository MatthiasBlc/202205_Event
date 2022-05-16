class User < ApplicationRecord
  has_many :events, through: :attendance, foreign_key: 'admin_id', class_name: 'Event'
  has_many :attendances, foreign_key: 'guest_id', class_name: 'Attendance'
end