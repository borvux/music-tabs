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
      if (confirmButton) {
        confirmButton.setAttribute('data-form-id', formId);
      }

      // Show the modal
      const confirmationModal = new bootstrap.Modal(document.getElementById('updateConfirmationModal'));
      confirmationModal.show();
    });
  });

    // Add event listener to the confirm button in the modal
  document.getElementById('confirm-button').addEventListener('click', () => {
    // Get the form ID and path from the confirm button's data attributes
    const formId = document.getElementById('confirm-button').getAttribute('data-form-id');

    // Submit the form if it exists
    if (formId) {
      const form = document.getElementById(formId);
      if (form) {
        form.submit();
      }
    } else {
      console.error('Form ID or path not found');
    }
  });

  // Close modals on backdrop click
  document.querySelectorAll('.modal').forEach(modal => {
    modal.addEventListener('hidden.bs.modal', () => {
      // Ensure the modal is fully hidden
      modal.classList.remove('show');
      document.body.classList.remove('modal-open');
      document.querySelector('.modal-backdrop').remove();
    });
  });
});
