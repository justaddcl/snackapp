const passwordInput = document.querySelector('#form__password');
const passwordToggle = document.querySelector('.password-toggle');

const togglePasswordVisibility = (passwordField, passwordToggle = undefined) => {
  const passwordHidden = passwordField.getAttribute('type') === 'password';

  passwordInput.setAttribute('type', passwordHidden ? 'text' : 'password');

  let toggleContent;
  if (passwordToggle && passwordToggle.classList.contains('link')) {
    toggleContent = passwordHidden
    ? 'Hide password'
    : 'Show password';
  } else {
    toggleContent = passwordHidden
    ? '<i class="far fa-eye"></i>'
    : '<i class="far fa-eye-slash"></i>';
  }

  passwordToggle.innerText = toggleContent;
};

passwordToggle && passwordToggle.addEventListener('click', () => {
  togglePasswordVisibility(passwordInput, passwordToggle);
  }
);
