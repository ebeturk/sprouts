import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"


// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = ["messages"]
  static values = {
    chatroomId: Number
  }

  connect() {
    console.log(this.chatroomIdValue)
    createConsumer().subscriptions.create("ChatroomChannel")
   }
}