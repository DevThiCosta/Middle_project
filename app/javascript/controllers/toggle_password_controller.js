import { Controller } from "stimulus";

export default class PasswordToggleController extends Controller {
  static targets = ["password", "toggleButton"];

  connect() {
    console.log("Hello from toggle_password_controller.js")
    this.toggleButtonTarget.addEventListener("click", this.togglePassword);
  }

  togglePassword() {
    const currentType = this.passwordTarget.getAttribute("type");
    const newType = currentType === "password"? "text" : "password";
    this.passwordTarget.setAttribute("type", newType);

    // Toggle icon classes
    this.toggleButtonTarget.classList.toggle("bi-eye");
    this.toggleButtonTarget.classList.toggle("bi-eye-slash");
  }
}
