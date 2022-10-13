<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddClub.aspx.cs" Inherits="COMP3851B.Views.Admin.Club.AddClub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <h1 class="text-primary">Add New Club</h1>
      <hr>
	<div class="row">

      <!--Left column image insert-->
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
        <div class="text-center">
          <img src="~/Images/insert%20image.png" runat="server" class="avatar img-circle img-thumbnail" alt="avatar">
           <asp:Label ID="imgName" runat="server" Text="" CssClass="col-lg-5"></asp:Label>
            <br />   
            <h6>Upload club profile picture</h6>
            <asp:FileUpload ID="FileUpload" runat="server" CssClass="" />
        </div>
      </div>
      
      <!--Alert-->
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 personal-info">

        <!--Content info-->
        <div>

            <!--Club Name-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Name:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCName" runat="server" class="form-control" placeholder="Enter club name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtCName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
          </div>

            <!--Club Slogan-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Slogan:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <asp:TextBox ID="txtCSlogan" runat="server" class="form-control" placeholder="Enter a short slogan"></asp:TextBox>
            </div>
          </div>

            <!--Club Email-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Email:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCEmail" runat="server" class="form-control" placeholder="Enter club email"></asp:TextBox>
            </div>
          </div>

            <!--Club Address-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Address:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCAddress" runat="server" class="form-control" placeholder="Enter club or campus address"></asp:TextBox>
            </div>
          </div>

            <!--Club Facebook-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Facebook Link:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCFacebook" runat="server" class="form-control" placeholder="Enter club's facebook link"></asp:TextBox>
            </div>
          </div>

            <!--Club Instagram-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Instagram Link:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCInsta" runat="server" class="form-control" placeholder="Enter club's instagram link"></asp:TextBox>
            </div>
          </div>

            <!--Club Category-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Club Category:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <asp:DropDownList ID="ddlCat" runat="server">
                    <asp:ListItem Value="SC">Student Chapter</asp:ListItem>
                    <asp:ListItem Value="IG">Interest Group</asp:ListItem>
                    <asp:ListItem Value="IC">International Community</asp:ListItem>
                </asp:DropDownList>
            </div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Category is required" ControlToValidate="ddlCat" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>

            <!--Club Banner Image-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="filebutton">Image banner (Details page):</label>
            <div class="col-md-4">
            <asp:FileUpload ID="FileUploadBanner" runat="server" CssClass="" />
            </div>
        </div>

            <!--Add/Cancel Buttons-->
         <div class="form-group col-lg-12">
            <asp:Button ID="btnAdd" runat="server" Text="Add" class=" btn btn-success btn-rounded" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" CausesValidation="False" UseSubmitBehavior="False" />   
          </div>
        </div>
      </div>
  </div>
</div>
</asp:Content>