import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"


// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = ["messages"]
  static values = {
    chatroomId: Number, currentUserId: Number
  }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data)}
    )
  }
  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }
  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

  #buildMessageElement(currentUserIsSender, message) {
    return `
    <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
    <div class="${this.#userStyleClass(currentUserIsSender)}">
    ${message}
    </div>
    </div>
    `
  }
  #insertMessageAndScrollDown(data) {
    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
  resetForm(event) {
    const form = event.target
    form.reset()
  }
}

document.addEventListener('DOMContentLoaded', function() {
  var deleteForms = document.querySelectorAll('.delete-form');
  deleteForms.forEach(function(form) {
    form.addEventListener('submit', function(event) {
      var message = form.querySelector('.delete-button').dataset.confirmDelete;
      if (!window.confirm(message)) {
        event.preventDefault();
      }
    });
  });
});

