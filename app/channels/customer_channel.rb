class CustomerChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_customer
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
