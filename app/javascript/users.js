const toggleElement = document.querySelector('.group__list-toggle') || null;

const toggleListView = e => {
  const collapsed = e.currentTarget.firstElementChild.innerText.includes('Show');
  const iconElement = e.currentTarget.querySelector('.group__list-toggle-icon');
  const icons = [
    collapsed ? 'fa-chevron-down' : 'fa-chevron-up',
    collapsed ? 'fa-chevron-up' : 'fa-chevron-down',
  ];
  toggleElement.firstElementChild.innerText = collapsed ? 'Collapse details' : 'Show details';
  iconElement.classList.replace(icons[0], icons[1]);
  document.querySelector('.user-list').classList.toggle('collapsed');
};

if (toggleElement) {
  toggleElement.addEventListener('click', toggleListView);
}
