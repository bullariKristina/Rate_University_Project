// Get all star elements
const stars = document.querySelectorAll('.star');

// Add click event listeners to each star
stars.forEach(star => {
    star.addEventListener('click', function() {
        const value = parseInt(this.getAttribute('data-value'));

        // Reset all stars to empty
        stars.forEach(s => s.textContent = '☆');

        // Fill stars up to the clicked star
        for (let i = 0; i < value; i++) {
            stars[i].textContent = '★';
        }

        // You can store the selected rating value in a hidden input field or send it to the server using AJAX
        // For example, if you have an input field named 'rating'
        document.getElementById('rating').value = value;
    });
});
