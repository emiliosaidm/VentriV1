import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="validate-users"
export default class extends Controller {
  connect() {
    console.log("Connected")
    this.#hide("all")
  }
  static targets = ["address", "name", "emergencyContact", "id", "licence", "profile", "startButton",
                    "nameForm", "reviewName", "addressForm", "reviewAddress", "emergencyContactForm"]

  startValidation(){
    this.#show("name")
    this.startButtonTarget.classList.add("d-none")
  }

  updateUser(event){
    event.preventDefault()
    const url = `update/user`
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.nameFormTarget)
    })
    .then(response => response.text())
    .then((data) => {
      this.nameTarget.innerHTML = data
      this.#show("address")
      this.showIdValidationForm()
      })
  }

  updateAddress(event){
    event.preventDefault()
    const url = `update/address`
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.addressFormTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.addressTarget.innerHTML = data
        this.#show("emergencyContact")
      })
  }

  updateEmergencyContact(event){
    event.preventDefault()
    const url = `update/emergency_contact`
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.emergencyContactFormTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.emergencyContactTarget.innerHTML = data
        this.#show("id")
      })
  }

  showNameValidationForm(){
    const url = `get_name_validation_form`
    fetch(url,{
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        this.nameTarget.innerHTML = data
      })
  }

  showAddressValidationForm(){
    const url = `get_address_validation_form`
    fetch(url,{
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        this.addressTarget.innerHTML = data
      })
  }

  showEmergencyContactValidationForm(){
    const url = `get_emergency_contact_form`
    fetch(url,{
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        this.emergencyContactTarget.innerHTML = data
      })
  }

  showIdValidationForm(){
    const url = `get_id_form`
    fetch(url,{
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        this.idTarget.innerHTML = data
      })
  }

  #hide(target) {
    switch (target){
      case "address": {
        this.addressTarget.classList.add("d-none");
        break;
      }
      case "name": {
        this.nameTarget.classList.add("d-none");
        break;
      }
      case "emergencyContact": {
        this.emergencyContactTarget.classList.add("d-none");
        break;
      }
      case "id":{
        this.idTarget.classList.add("d-none");
        break;
      }
      case "licence": {
        this.licenceTarget.classList.add("d-none");
        break;
      }
      case "profile": {
        this.profileTarget.classList.add("d-none");
        break;
      }
      case "all": {
        this.addressTarget.classList.add("d-none");
        this.nameTarget.classList.add("d-none");
        this.emergencyContactTarget.classList.add("d-none");
        this.idTarget.classList.add("d-none");
        this.licenceTarget.classList.add("d-none");
        this.profileTarget.classList.add("d-none");
        break;
      }
    }
  }

  #show(target){
    switch (target){
      case "address": {
        this.addressTarget.classList.remove("d-none");
        break;
      }
      case "name": {
        this.nameTarget.classList.remove("d-none");
        break;
      }
      case "emergencyContact": {
        this.emergencyContactTarget.classList.remove("d-none");
        break;
      }
      case "id":{
        this.idTarget.classList.remove("d-none");
        break;
      }
      case "licence": {
        this.licenceTarget.classList.remove("d-none");
        break;
      }
      case "profile": {
        this.profileTarget.classList.remove("d-none");
        break;
      }
      case "all": {
        this.addressTarget.classList.remove("d-none");
        this.nameTarget.classList.remove("d-none");
        this.emergencyContactTarget.classList.remove("d-none");
        this.idTarget.classList.remove("d-none");
        this.licenceTarget.classList.remove("d-none");
        this.profileTarget.classList.remove("d-none");
        break;
      }
    }
  }
}
