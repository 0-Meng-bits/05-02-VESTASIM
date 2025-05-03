<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="WebApplication1.VESTASIM.buy" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VestaSim</title>
    <link rel="stylesheet" href="buy.css" />
    <script src="login.js" defer></script>
</head>
<body>
    <!-- Navigation bar -->
    <nav class="navbar">
        <h1 class="logo">VestaSim</h1>
        <ul class="navlinks">
            <li class="active"><a href="home.aspx">Home</a></li>
            <li>
                <a href="#properties">Properties</a>
                <ul class="dropdown">
                    <li><a href="buy.aspx">Buy</a></li>
                    <li><a href="sell.aspx">Sell</a></li>
                    <li><a href="rent.aspx">Rent</a></li>
                </ul>
            </li>
            <li><a href="home.aspx">About</a></li>
            <li><a href="team.aspx">Team</a></li>
            <li class="ctn"><a href="#contact">Contact</a></li>

            <!-- Login Link -->
            <li id="ctn" class="log-btn">
                <asp:Panel ID="loginPanel" runat="server">
                    <a href="Loginn.aspx">Login</a>
                </asp:Panel>
             
                <asp:Panel ID="logoutPanel" runat="server">
                    <a href="Logout.aspx">Logout</a>
                </asp:Panel>
            </li>
        
        </ul>
        <img class="menubtn" src="IMG/menubtn.png" alt="" />
    </nav>

    <!-- Header section -->
    <section id="home">
        <header>
            <div class="home-content">
                <h2>Simulate, Invest, and Grow on your path to property success</h2>
                <div class="line"></div>
                <h1>Buy now!</h1>
            </div>
        </header>
    </section>

    <!-- Buy content -->
    <section id="buysell">
        <div class="title">
            <h1>Own a property and Sell it!</h1>
            <div class="line"></div>
        </div>

        <div class="row-buysell">
            <%-- Repeat this block for each apartment --%>
            <% for (int i = 0; i < 9; i++) { %>
                <div class="col-buysell">
                    <img src="IMG/apartment-red.png" alt="Comfortable Apartment" />
                    <div class="apartment-info">
                        <h3><%: i == 0 ? "Breathtaking penthouse apartment" :
                                   i == 1 ? "Affordable standard apartment" :
                                   "Luxury Comfortable Apartment" %></h3>
                        <div class="details">
                            <span><%: i == 1 ? "1 bedroom" : "1 bedroom" %></span>
                            <span><%: i == 1 ? "1 bathroom" : "1 bathroom" %></span>
                        </div>
                        <div class="details">
                            <span><%: i == 0 ? "144 m²" : "69 m²" %></span>
                            <span class="price">
                                <%: i == 0 || i == 1 ? "Starting from Free" : "Starting from $30.00" %>
                            </span>
                        </div>
                    </div>
                    <div class="actions">
                        <a href="#" class="view-btn">VIEW</a>
                    </div>
                </div>
            <% } %>
        </div>
    </section>

    <!-- Footer -->
    <section id="footer">
        <footer>
            <div class="footer-container">
                <div class="footer-section about">
                    <h2>About Us</h2>
                    <p>
                        At VestaSim, we make buying, selling, and renting properties simple, secure,
                        and seamless. Whether you're looking for your dream home, listing a property,
                        or finding the perfect rental.
                    </p>
                </div>
                <div class="footer-section links">
                    <h2>Quick Links</h2>
                    <ul>
                        <li><a href="home.aspx">Home</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="team.aspx">Team</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-section contact">
                    <h2 id="contact">Contact Us</h2>
                    <p>Email: vestasim@gmail.com</p>
                    <p>Phone: 09484463845</p>
                    <p>Address: Agujo Daanbantayan, Cebu, Philippines</p>
                </div>
                <div class="footer-bottom">
                    <p>&copy; 2025 VESTASIM. All Rights Reserved.</p>
                </div>
            </div>
        </footer>
    </section>
</body>
</html>
