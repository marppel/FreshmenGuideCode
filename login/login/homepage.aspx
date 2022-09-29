<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="login.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width-device-width, initial scale=1.0" />
    <link rel="stylesheet" href="style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="header">
    <div id="backgroundImage"></div>
    <div class ="text-box">
        <h1>Sydney's Most Trusted University</h1>
        <p>UON is one of the oldest and the most historic university in Australia that provide student the best course they can choose
            <br />Our aim is to make a student think critically and they can impact to the future of the world.
        </p>
        <a href="" class="imageBtn">Visit Us To Know More</a>
    </div>
    </section>
    <section class="course">
        <h1>Course We Offer</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

        <div class="row">
            <div class="course-col">
                <h3>Intermediate</h3>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
            </div>
            <div class="course-col">
                <h3>Degree</h3>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
            </div>
            <div class="course-col">
                <h3>Post-Graduate</h3>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
            </div>
        </div>
    </section>
    <section class="campus">
        <h1> Our Global Campus</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        <div class="row">
            <div class="campus-col">
        <img src="Images/school2.jpeg" />    
                <div class="layer">
                    <h3>Sydney</h3>
                </div>
        </div>

                  <div class="campus-col">
        <img src="Images/UON2.jpg" />    
                <div class="layer">
                    <h3>Newcastle Drive</h3>
                </div>
        </div>

                  <div class="campus-col">
        <img src="Images/UON3.jpg" />    
                <div class="layer">
                    <h3>Singapore</h3>
                </div>
        </div>

        </div>
    </section>

    <section class="facilities">
        <h1> Our Facilities </h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

         <div class="row">
            <div class="facilities-col">
        <img src="Images/library.jpg" />    
                
                    <h3>World Class Library</h3>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>

                  <div class="facilities-col">
        <img src="Images/compLab.jpg" />    
                
                    <h3>Computer Lab</h3>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>

                  <div class="facilities-col">
        <img src="Images/playground.jpg" />    
               
                    <h3>World Class Playground</h3>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>

        </div>
    </section>

    <section class="testimonial">
        <h1>What Our Student Says</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

        <div class="row">
            <div class="testimonial-col">
                <img src="Images/man.png" />
                <div>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <h3>Jason Chandra</h3>
                      <i class="facilities fa-star"></i>
                     <i class="facilities fa-star"></i>
                     <i class="facilities fa-star"></i>
                     <i class="facilities fa-star"></i>
                     <i class="facilities fa-star-half-o"></i>
                </div>
            </div>

            <div class="testimonial-col">
                <img src="Images/woman.png" />
                <div>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <h3>Amanda barkley</h3>
                    <i class="facilities fa-star"></i>
                     <i class="facilities fa-star"></i>
                     <i class="facilities fa-star"></i>
                     <i class="facilities fa-star"></i>
                     <i class="facilities fa-star-o"></i>
                </div>
            </div>
        </div>
    </section>

    <section class="contactUs">
        <h1>Enroll for our course in the future from anywhere around the world</h1>
        <a href="ContactUs.aspx" class="contactBtn">CONTACT US</a>
    </section>
</asp:Content>
