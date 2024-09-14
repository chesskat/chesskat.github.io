// Hamburger Menu Toggle
const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links');

hamburger.addEventListener('click', () => {
    navLinks.classList.toggle('open');
});

// Smooth Scrolling
const navLinksItems = document.querySelectorAll('.nav-links a');

navLinksItems.forEach(link => {
    link.addEventListener('click', function(e) {
        e.preventDefault();
        navLinks.classList.remove('open');
        const targetId = this.getAttribute('href').substring(1);
        const targetPosition = document.getElementById(targetId).offsetTop - 70;
        window.scrollTo({
            top: targetPosition,
            behavior: 'smooth'
        });
    });
});
