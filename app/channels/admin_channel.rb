class AdminChannel < ApplicationCable::Channel
  def subscribed
    stream_for 'admin_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
