<%-- 
    Document   : loginRegister
    Created on : May 23, 2022, 9:01:30 PM
    Author     : thisura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Phoenix Airline</title>
        <link rel="stylesheet" href="assets/register_login/getin-style.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <div class="container">
            <div class="forms-container">
                <div class="sign-in-sign-in">
                    <form action="<%=request.getContextPath()%>/LoginServlet" method="POST" class="sign-in-form">
                        <h2 class="title">Sign In</h2>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" placeholder="Username" name="username" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" placeholder="password" name="password" />
                        </div>
                        <input type="submit" class="btn solid" value="Login" />
                    </form>
                </div>

                <div class="sign-up-sign-up">
                    <form action="<%=request.getContextPath()%>/RegisterServlet" method="POST" class="sign-up-form">
                        <h2 class="title">Sign Up</h2>

                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" placeholder="First Name" name="first_name" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" placeholder="Last Name" name="last_name" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-key"></i>
                            <input type="text" placeholder="Username" name="username" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            <input type="email" placeholder="Email" name="email"/>
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" placeholder="Password" name="password" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" placeholder="Re-type Password" name="r_password" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-map-marker"></i>
                            <input type="text" placeholder="Address" name="address" />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-phone"></i>
                            <input type="text" placeholder="Phone" name="phone_number" />
                        </div>
                        <div class="dropdown">
                            <!--<div class="dropdown-content">-->
                                <select class="drop-btn" name="role">

                                    <option value="client">Passenger</option>
                                    <option value="staffg1">Grade 1 Staff</option>
                                    <option value="staffg2">Grade 2 Staff</option>
                                </select>
                            <!--</div>-->
                        </div>
                        <input type="submit" class="btn solid" value="Sign Up" />
                        <input type="reset" class="btn solid" value="Clear Form" />
                    </form>
                </div>
            </div>
            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <h3>New Here?</h3>
                        <p>
                            Welcome to the Phoenix Airline<br />Inspiring Experiences<br />Extraordinary
                            Journeys
                        </p>
                        <button class="btn transparent" id="sign-up-button">Sign Up</button>
                    </div>
                    <img src="assets/register_login/trav1.svg" alt="image" class="image" />
                </div>
                <div class="panel right-panel">
                    <div class="content">
                        <h3>One of us</h3>
                        <p>
                            Welcome to the Phoenix Airline<br />Inspiring Experiences<br />Extraordinary
                            Journeys
                        </p>
                        <button class="btn transparent" id="sign-in-button">Login</button>
                    </div>
                    <img src="assets/register_login/trav2.svg" alt="" class="image" />
                </div>
            </div>
        </div>
        <script src="assets/register_login/getin.js"></script>
    </body>

</html>