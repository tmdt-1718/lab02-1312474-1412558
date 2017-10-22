class Message < ApplicationRecord
  belongs_to :user_sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :user_receiver, :foreign_key => :receiver_id, class_name: 'User'

  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  
end
