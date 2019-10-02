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

    // Play sound
    var sound = new Howl({
      src: ['/alert.mp3']
    }).play();

    // Update points
    let div1 = document.getElementById('customer_points');
    if (div1) div1.innerHTML = data['html1'];

    // Update claims
    let div2 = document.getElementById('customer_claims');
    if (div2) div2.innerHTML = data['html2'];
  }
});
