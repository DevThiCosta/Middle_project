import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['card', 'image'];
  static values = { searchValue: String };

  connect() {
    this.searchInput = this.element.querySelector('#searchInput');
    this.filterCards();
  }

  filterCards() {
    const searchValue = this.searchValueValue.toLowerCase();

    this.cardTargets.forEach((card, index) => {
      const cardContent = card.textContent.toLowerCase();
      if (cardContent.includes(searchValue)) {
        card.style.display = 'block';
        this.imageTargets[index].style.display = 'block';
        card.classList.add('visible-card');
      } else {
        card.style.display = 'none';
        this.imageTargets[index].style.display = 'none';
        card.classList.remove('visible-card');
      }
    });
  }

  searchValueChanged() {
    this.filterCards();
  }
}
