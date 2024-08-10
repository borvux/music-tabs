document.addEventListener("DOMContentLoaded", () => {
  // Select the modals
  var deleteModal = document.getElementById('confirmationModal');
  var logoutModal = document.getElementById('logoutConfirmationModal');

  if (logoutModal) {
    logoutModal.addEventListener('show.bs.modal', function (event) {
      var button = event.relatedTarget; // Button that triggered the modal
      var path = button.getAttribute('data-path');
      
      // Set the correct URL for the logout action in the confirm button
      var confirmLogoutButton = logoutModal.querySelector('#confirm-action');
      if (confirmLogoutButton) {
        confirmLogoutButton.setAttribute('href', path);
      }
    });
  } else if (deleteModal) {
    deleteModal.addEventListener('show.bs.modal', function (event) {
      var button = event.relatedTarget; // Button that triggered the modal
      var tabId = button.getAttribute('data-bs-tab-id');
      
      // Set the correct URL for the delete action in the confirm button
      var confirmDeleteButton = deleteModal.querySelector('#confirm-action');
      if (confirmDeleteButton) {
        confirmDeleteButton.setAttribute('href', `/tabs/${tabId}`);
      }
    });
  }
});
