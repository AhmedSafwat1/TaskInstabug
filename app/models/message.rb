# require 'elasticsearch/model'
class Message < ApplicationRecord
  #use ElasticSearch
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  #validation 
  validates :message, presence: true 
  validates :number, uniqueness: { scope: :chat_id }

  # hook event run auto
  after_create  :update_chat_message
  before_create :set_number

  #relation
  belongs_to :chat


  #custom srearch
  def self.search_published(query, chat_id)
    self.search({
      query: {
        bool: {
          must: [
          {
            multi_match: {
              query: query,
              fields: [:message]
            }
          },
          {
            match: {
              chat_id: chat_id
            }
          }]
        }
      }
    })
  end

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
