const navbar = document.querySelector(".navbar-container");

window.addEventListener("scroll", () => {

    const triggerPoint = window.innerHeight * 0.3;

    if (window.scrollY > triggerPoint) {
        navbar.classList.add("navbar-scrolled");
    } else {
        navbar.classList.remove("navbar-scrolled");
    }

});