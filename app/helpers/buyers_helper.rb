module BuyersHelper
  def conversation_interlocutor(conversation)
    conversation.recipient == current_buyer ? conversation.sender : conversation.recipient
  end
end
