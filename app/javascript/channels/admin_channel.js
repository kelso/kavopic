import consumer from "./consumer"

consumer.subscriptions.create("AdminChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel

    // Play sound
    // var sound = new Howl({
    //   src: ['/alert.mp3']
    // }).play();

    // Update points
    let div = document.getElementById('realtime_admin_dashboard');
    if (div) div.innerHTML = data['html'];
  }
});
