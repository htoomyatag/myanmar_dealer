module MessagesHelper
  def self_or_other(message)
    message.buyer == current_buyer ? "self" : "other"
  end

  def message_interlocutor(message)
    message.buyer == message.conversation.sender ? message.conversation.sender : message.conversation.recipient
  end
end
