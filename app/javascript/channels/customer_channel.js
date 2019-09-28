import consumer from "./consumer"

consumer.subscriptions.create("CustomerChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel

    let div = document.getElementById('customer_points');
    if (div) div.innerHTML = data['html'];
  }
});
