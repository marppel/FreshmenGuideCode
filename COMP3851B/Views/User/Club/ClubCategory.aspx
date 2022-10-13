<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ClubCategory.aspx.cs" Inherits="COMP3851B.Views.User.Club.ClubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <!--Content Title-->
        <div class="row">
            <p></p>
            <p class="text-left" style="font-size:2.0vw;font-weight:bold;">School Clubs</p>
        </div>

        <!--Boostrap Tabs (3)-->
        <div class="row col-lg-12">
            <ul class="nav nav-tabs justify-content-center nav-fill w-100" style="font-size:1.3vw;">
                <li class="nav-item">
                    <a class="nav-link active" href="#SC" data-toggle="tab">Student Chapters</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#IG" data-toggle="tab">Interest Groups</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#IC" data-toggle="tab">International Community</a>
                </li>
            </ul>

            <!--Tab Contents-->
            <div class="tab-content">

                <!--Content Student Chapter-->
                <div class="tab-pane active" id="SC">
                    <asp:Image ID="Image1" runat="server" ImageUrl=""/>
                    <asp:LinkButton ID="LinkButton1" runat="server">Placeholder content, swap with datalist</asp:LinkButton>
                </div>

                <!--Content Interest Groups-->
                <div class="tab-pane" id="IG">Content B</div>

                <!--International Community-->
                <div class="tab-pane" id="IC">Content C</div>
            </div>
        </div>
    </div>

</asp:Content>
