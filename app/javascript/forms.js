const passwordInput = document.querySelector('#session_password');
const showPasswordButton = document.querySelector('#show-password-link');

const togglePasswordVisibility = () => {
  const passwordHidden = passwordInput.getAttribute('type') === 'password';

  showPasswordButton.innerHTML = passwordHidden
    ? 'Hide password'
    : 'Show password';

  passwordInput.setAttribute('type', passwordHidden ? 'text' : 'password');
};

showPasswordButton.addEventListener('click', togglePasswordVisibility);
