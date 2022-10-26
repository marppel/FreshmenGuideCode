<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CampusAchivement.aspx.cs" Inherits="COMP3851B.Views.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
            
        <header>
            <h1>
                <asp:Label ID="Label2" runat="server" Text="Label">
                    <span class="fa-lastfm la-bars"></span>
                </asp:Label>
                Dashboard
           </h1>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="search here" />
            </div>
            <div class="user-wrapper">
                <img src="../../../Images/UONEditedLogo.png" style=" width :30px ; height: 30px" alt="" />
                <div>
                    <h4>School Admin</h4>
                    <small>Admin</small>
                </div>
            </div>

        </header>
         

    <br />
           <h1>
               Campus achievement
           </h1>
        <hr style ="border-top : 2px solid black; margin-right : 40px"/>

        <!-- Achievement Name -->
        <label for="achievementName">Achievement Name</label><br />
        <input type="text" id="achievementName" name="achievementName" style="margin-left : 10px;width: 70%" /><br />

        <!-- Achievement Image -->
        <label for="achievementImage">Achievement Image</label><br />
        <input type="file" id="achievementImage" name="achievementImage" style="margin-left :10px" /><br />

        <!-- Achievement Type -->
        <label for="achievementType">Achievement Type </label><br />
        <input type="text" id="achievementType" name="achievementType" style="margin-left : 10px;width: 70%" /><br />
        
        <!-- Date/Time earned -->
         <label for="dateEarned">Date Earned    </label><br />
         <input type="date" id="dateEarned" name="dateEarned" style="margin-left : 10px"/><br />
        </div>
</asp:Content>
