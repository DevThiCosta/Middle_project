import { Controller } from "stimulus";

export default class ProfileController extends Controller {
  static targets = ["tabLink", "tabPane", "editProfileBtn"];

  connect() {
    console.log("Hello from tabs_controller.js")
    this.tabLinkTargets.forEach((tabLink) => {
      tabLink.addEventListener("click", this.handleTabClick);
    });

    this.editProfileBtnTarget.addEventListener("click", this.toggleEditProfile);
  }

  handleTabClick = (event) => {
    event.preventDefault();
    const targetTabId = event.currentTarget.dataset.tab;

    this.deactivateTabs();
    event.currentTarget.classList.add("active");
    this.getElementById(targetTabId).classList.add("show", "active");
  }

  toggleEditProfile = (event) => {
    event.preventDefault();
    const isEditMode =!this.isInEditMode();

    this.formElements.forEach((element) => {
      element.contentEditable = isEditMode;
      element.classList.toggle("form-control",!isEditMode);
    });

    this.editProfileBtnTarget.textContent = isEditMode? "Salvar Perfil" : "Editar Perfil";
  }

  deactivateTabs() {
    this.tabLinkTargets.forEach((link) => link.classList.remove("active"));
    this.tabPaneTargets.forEach((pane) => pane.classList.remove("show", "active"));
  }

  getElementById(id) {
    return document.getElementById(id);
  }

  get formElements() {
    return document.querySelectorAll(".form-control");
  }

  isInEditMode() {
    return this.editProfileBtnTarget.textContent === "Salvar Perfil";
  }
}
