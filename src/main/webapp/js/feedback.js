$(document).ready(function() {
    $('.rate-box input[type="radio"]').on('change', function() {
        var selectedRating = $(this).val();
        $('.rate-box label').css('color', '#ddd');
        $(this).siblings('label').css('color', '#ddd').prevAll('label').css('color', '#ffd700');
        $(this).nextAll('label').css('color', '#ddd');
    });

    $('#ratingForm').submit(function(event) {
        event.preventDefault(); // Prevent default form submission

        var selectedRating = $('input[name="rating"]:checked').val();
        if (selectedRating) {
            // If a rating is selected, send it to the server via AJAX or modify the form action to include the selected rating
            // Example using AJAX:
            var ratingValue = $('input[name="rating"]:checked').val();
            $.ajax({
                type: 'POST',
                url: '/submitFeedback',
                data: { rating: ratingValue },
                success: function(response) {
                    // Handle success if needed
                },
                error: function(error) {
                    // Handle error if needed
                }
            });
        } else {
            // Handle the case where no rating is selected
            alert('Please select a rating!');
        }
    });
});
