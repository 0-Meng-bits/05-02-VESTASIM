const loginBtn = document.querySelector(".log-btn a"); // Target the <a> tag inside the <li>
const formPopup = document.querySelector(".form-popup");
const closePopupBtn = document.querySelector(".form-popup .close-btn");

loginBtn.addEventListener("click", (event) => {
    const isLoggedIn = loginBtn.textContent.trim() === "Logout"; // Check if the button is "Logout"

    if (isLoggedIn) {
        window.location.href = "Logout.aspx"; // Redirect to logout page
    } else {
        document.body.classList.toggle("show-popup"); // Show the login form (if not logged in)
    }
});

closePopupBtn.addEventListener("click", () => {
    document.body.classList.remove("show-popup"); // Close the popup when clicked
});

window.addEventListener("DOMContentLoaded", () => {
    const loginBtn = document.querySelector(".log-btn a");
    const isLoggedIn = document.body.getAttribute('data-loggedin') === "true"; // Access the attribute

    if (isLoggedIn) {
        loginBtn.textContent = "Logout";
        loginBtn.setAttribute("href", "Logout.aspx");
    } else {
        loginBtn.textContent = "Login";
        loginBtn.setAttribute("href", "Loginn.aspx");
    }
});

