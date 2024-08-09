document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById('tab-form');
  const submitButton = document.getElementById('submit-button');

  submitButton.addEventListener('click', (event) => {
    event.preventDefault(); // prevent the form from submitting immediately

    // show the modal
    $('#confirmationModal').modal('show');
  });

  // confirm button in the modal
  document.getElementById('confirm-button').addEventListener('click', () => {
    // submit the form
    form.submit();
  });
});
