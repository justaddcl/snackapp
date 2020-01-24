const menuButton = document.querySelector('button.header__menu');
const mobileMenu = document.querySelector('nav.nav-mobile');

function toggleMobileMenu() {
  const open = mobileMenu.getAttribute('aria-hidden') === 'true' || false;
  mobileMenu.setAttribute('aria-hidden', !open);
  mobileMenu.classList.toggle('nav-mobile--open');
}

menuButton.addEventListener('click', toggleMobileMenu);
