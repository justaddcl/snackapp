const menuButton = document.querySelector('button.header__menu');
const mobileMenu = document.querySelector('nav.nav-mobile');
const main = document.querySelector('main.main');

function toggleMobileMenu() {
  document.querySelector('.header__menu-icon').classList.toggle('fa-times');
  document.querySelector('.header__menu-icon').classList.toggle('fa-bars');
  mobileMenu.classList.toggle('nav-mobile--open');
  main.classList.toggle('main--modal-open');
}

menuButton.addEventListener('click', toggleMobileMenu);
