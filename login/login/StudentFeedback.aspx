<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="StudentFeedback.aspx.cs" Inherits="login.StudentFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
    <style>
        *{
            box-sizing:border-box;
            margin:0;
            padding: 0;
        }

        h2{
            position: relative;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }
        h2:after{
            content:'';
            position: absolute;
            left: 50%;
            bottom: 0;
            transform: translateX(-50%);
            height: 4px;
            width: 50px;
            border-radius: 2px;
            background-color: #2ecc71;
        }
    </style>
    <link rel="stylesheet" href="style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
    <br />
    <br />
    <div class="contactContainer">
        <div class="contactBox">
            <div class="left">
            </div>
            <div class="right">
                <h2>Contact Us</h2>
                <input type ="text" class="field" placeholder="Student Number" id="txtStudentNumber" />
                <input type ="text" class="field" placeholder="Name" id ="txtName" />
                <input type ="text" class="field" placeholder="Email" id="txtEmail"/>
                <textarea class="field areea" placeholder="Message" id="txtMessage"></textarea>
                <asp:Button ID="btnSend" CssClass="btn" runat="server" Text="Send" />
                
               
              <!--<button class="btn" id="sendButton">Send</button>-->

            </div>
        </div>
    </div>

</asp:Content>
