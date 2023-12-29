
document.addEventListener('click', function(event) {
  if (event.target.matches('.price h6')) {
    var clickedButton = event.target;

    if (clickedButton.innerText === 'JOIN') {
      clickedButton.innerText = 'DROP';
    } else {
      clickedButton.innerText = 'JOIN';
    }
  }
});