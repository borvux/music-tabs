document.addEventListener("DOMContentLoaded", () => {
  // Add event listener to all buttons with class 'submit-button'
  document.querySelectorAll('.submit-button').forEach(button => {
    button.addEventListener('click', (event) => {
      event.preventDefault(); // Prevent the form from submitting immediately

      // Get the form ID from the button's data attribute
      const formId = button.getAttribute('data-form-id');
      const form = document.getElementById(formId);

      // Store the form ID in the modal's confirm button
      const confirmButton = document.getElementById('confirm-button');
      confirmButton.setAttribute('data-form-id', formId);

      // Show the modal
      const confirmationModal = new bootstrap.Modal(document.getElementById('confirmationModal'));
      confirmationModal.show();
    });
  });

  // Add event listener to the confirm button in the modal
  document.getElementById('confirm-button').addEventListener('click', () => {
    // Get the form ID from the confirm button's data attribute
    const formId = document.getElementById('confirm-button').getAttribute('data-form-id');
    const form = document.getElementById(formId);

    // Submit the form if it exists
    if (form) {
      form.submit();
    } else {
      console.error('Form not found:', formId);
    }
  });

  // Add event listener to the delete modal
  var deleteModal = document.getElementById('confirmationModal');
  deleteModal.addEventListener('show.bs.modal', function (event) {
    var button = event.relatedTarget;
    var tabId = button.getAttribute('data-bs-tab-id');

    var deleteButton = deleteModal.querySelector('.modal-footer form');
    deleteButton.action = `/tabs/${tabId}`;
  });
});
