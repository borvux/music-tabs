document.addEventListener('DOMContentLoaded', () => {
  const noticeToastElement = document.getElementById('noticeToast');
  const alertToastElement = document.getElementById('alertToast');

  if (noticeToastElement) {
    const noticeToast = new bootstrap.Toast(noticeToastElement);
    noticeToast.show();
  }

  if (alertToastElement) {
    const alertToast = new bootstrap.Toast(alertToastElement);
    alertToast.show();
  }
});
