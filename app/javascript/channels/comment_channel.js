import consumer from "./consumer"

const appComment = consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const messages = document.getElementById('messages');
    messages.insertAdjacentHTML('beforeend', data['comment']);
  },

  speak: function(comment) {
    return this.perform('speak', {comment: comment});
  }
});

window.addEventListener("keypress", function(e) {
  if (e.keyCode === 13) {
    appComment.speak(e.target.value);
    e.target.value = '';
    e.preventDefault();
  }
});
