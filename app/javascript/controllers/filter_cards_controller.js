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
      const isMatch = cardContent.includes(searchValue);

      card.style.display = isMatch? 'block' : 'none';
      this.imageTargets[index].style.display = isMatch? 'block' : 'none';
      card.classList.toggle('visible-card', isMatch);
    });
  }

  searchValueChanged() {
    this.filterCards();
  }
}
