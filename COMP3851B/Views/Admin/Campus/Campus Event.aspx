<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CampusEvent.aspx.cs" Inherits="COMP3851B.Views.Admin.WebForm1" %>
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
                <img src="../../../Images/UONEditedLogo.png" alt="" style="width :30px ; height : 30px"/>
                <div>
                    <h4>School Admin</h4>
                    <small>Admin</small>
                </div>
            </div>

        </header>

    <br />
        <h1>
               Campus Event
           </h1>
           <hr style ="border-top : 2px solid black; margin-right : 40px"/>

       <!-- Event Name -->
       <label for="eventName">Event Name</label><br />
       <input type="text" id="eventName" name="eventName" style="margin-left : 10px;width: 70%" /><br />

       <!-- Event Image-->
       <label for="eventImage">Event Image</label><br />
       <input type="file" id="eventImage" name="eventImage" style="margin-left :10px" /><br />

       <!--Event Description-->
       <label for="eventDescription">Event Description : </label><br />
       <textarea id="eventDescription" name="eventDescription"style= "height :100px ;width:70% ;margin-left:7px"></textarea><br />

       <!-- Event type -->
       <label for="eventType">Event Type </label><br />
       <input type="text" id="eventType" name="eventType" style="margin-left : 10px;width: 70%" /><br />

       <!-- Event Date -->
       <label for="eventDate">Event Date    </label><br />
       <input type="date" id="eventDate" name="eventDate" style="margin-left : 10px"/><br />

       <!-- Event Begin Time -->
       <label for="eventBeginTime">Event Begin Time    </label><br />
       <input type="time" id="eventBeginTime" name="eventBeginTime" style="margin-left : 10px"/><br />

       <!-- Event End Time -->
       <label for="eventEndTime">Event End Time    </label><br />
       <input type="time" id="eventEndTime" name="eventEndTime" style="margin-left : 10px"/><br />

       <br />
       <!-- Submit -->
       <input type="submit" value="Submit" style="width:100px ;background-color: navy; color:white"/>

       <!-- Reset -->
       <input type="reset" value="Clear" style="margin-left : 5px ; width:100px" />
   </div>

</asp:Content>
