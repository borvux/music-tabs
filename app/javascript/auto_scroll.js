let scrollInterval;
let scrollSpeed = 1; // initial speed level

// function to start auto-scrolling
function startAutoScroll() {
  const speedMapping = {
    1: 200,
    2: 100,
    3: 50,
    4: 1,
    5: 1
  };
  const scrollAmount = scrollSpeed === 5 ? 2 : 1;
  scrollInterval = setInterval(() => {
    window.scrollBy(0, scrollAmount);
  }, speedMapping[scrollSpeed]);

  // change button text and icon to indicate pause action
  document.getElementById('auto-scroll-btn').innerHTML = 'Pause Scroll<i class="fa-solid fa-pause ms-2"></i>';
}

// function to stop auto-scrolling
function stopAutoScroll() {
  clearInterval(scrollInterval);
  scrollInterval = null;

  // change button text and icon to indicate start action
  document.getElementById('auto-scroll-btn').innerHTML = 'Auto Scroll<i class="fa-solid fa-play ms-2"></i>';
}

// toggle auto-scrolling
document.getElementById('auto-scroll-btn').addEventListener('click', () => {
  if (scrollInterval) {
    stopAutoScroll();
  } else {
    startAutoScroll();
  }
});

// change speed without starting auto-scroll if it's not already running
document.getElementById('increase-speed-btn').addEventListener('click', () => {
  if (scrollSpeed < 5) {
    scrollSpeed++;
    document.getElementById('scroll-speed-display').textContent = `Scroll Speed: ${scrollSpeed}`;
    if (scrollInterval) {
      clearInterval(scrollInterval);
      startAutoScroll(); // restart auto-scroll with new speed if it was running
    }
  }
});

document.getElementById('decrease-speed-btn').addEventListener('click', () => {
  if (scrollSpeed > 1) {
    scrollSpeed--;
    document.getElementById('scroll-speed-display').textContent = `Scroll Speed: ${scrollSpeed}`;
    if (scrollInterval) {
      clearInterval(scrollInterval);
      startAutoScroll();
    }
  }
});
