class Message < ApplicationRecord
  validates :message, presence: true 
  validates :number, uniqueness: { scope: :chat_id }
  # hook event run auto
  after_create  :update_chat_message
  before_create :set_number

  belongs_to :chat

  private
    
  #update number of message in chat
  def update_chat_message
    chat =  self.chat.increment(:message_count)
    chat.save
  end

  #set number for chat
  def set_number
    self.number =  self.chat.message_count.to_i + 1
  end
end
