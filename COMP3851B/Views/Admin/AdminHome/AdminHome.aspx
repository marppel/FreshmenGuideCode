<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="COMP3851B.Views.Admin.AdminHome.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../../CSS/AdminStyle.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia" />
   <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
</svg>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-content">
        <header>
            <h1>
                <asp:Label ID="Label1" runat="server" Text="Label">
                    <span class="fa-lastfm la-bars"></span>
                </asp:Label>
                Dashboard
           </h1>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="search here" />
            </div>
            <div class="user-wrapper">
                <img src="../../../Images/UONEditedLogo.png" width="30px" height="30px" alt="" />
                <div>
                    <h4>School Admin</h4>
                    <small>Admin</small>
                </div>
            </div>

        </header>
          </div>
      <main>
            <div class="cards">
                <div class="card-single">
                    <div>
                        <h1>54</h1>
                        <span>Users</span>
                        <i class="bi bi-person"></i>
                    </div>
                    <div>
                    

                    </div>
                </div>

                  <div class="card-single">
                    <div>
                        <h1>6</h1>
                        <span>Club</span>
                    </div>
                    <div>
                    <span class="las la-users"></span>

                    </div>
                </div>

                  <div class="card-single">
                    <div>
                        <h1>6</h1>
                        <span>Course</span>
                    </div>
                    <div>
                    <span class="las la-users"></span>

                    </div>
                </div>

                  <div class="card-single">
                    <div>
                        <h1>6</h1>
                        <span>Sports</span>
                    </div>
                    <div>
                    <span class="las la-users"></span>

                    </div>
                </div>

                  <div class="card-single">
                    <div>
                        <h1>6</h1>
                        <span>E-Sports</span>
                    </div>
                    <div>
                    <span class="las la-users"></span>

                    </div>
                </div>

                  <div class="card-single">
                    <div>
                        <h1>6</h1>
                        <span>Career</span>
                    </div>
                    <div>
                    <span class="las la-users"></span>

                    </div>
                </div>
                  <div class="card-single">
                    <div>
                        <h1>10</h1>
                        <span>Explore</span>
                    </div>
                    <div>
                    <span class="las la-users"></span>

                    </div>
                </div>

            </div>

           <!-- <div class="recent-grid">
                <div class="projects">
                    <div class="card">
                        <div class="card-header">
                            <h2>Recent Projects</h2>
                        </div>
                    </div>
                    </div>
                </div>-->
          
        </main>
</asp:Content>
