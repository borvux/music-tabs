document.addEventListener("DOMContentLoaded", () => {
  var deleteModal = document.getElementById('confirmationModal');
  deleteModal.addEventListener('show.bs.modal', function (event) {
    var button = event.relatedTarget;
    var tabId = button.getAttribute('data-bs-tab-id');

    // Set the correct URL for the delete action in the confirm button
    var confirmDeleteButton = document.getElementById('confirm-delete');
    confirmDeleteButton.href = `/tabs/${tabId}`;
  });
});
