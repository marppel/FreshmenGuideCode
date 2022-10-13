<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditClub.aspx.cs" Inherits="COMP3851B.Views.Admin.Club.EditClub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <h1 class="text-primary">Edit Club Details</h1>
      <hr>
	<div class="row">

      <!--Left column image insert-->
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
        <div class="text-center">
          <img src="~/Images/insert%20image.png" runat="server" class="avatar img-circle img-thumbnail" alt="avatar">
           <asp:Label ID="imgName" runat="server" Text="" CssClass="col-lg-5"></asp:Label>
            <br />   
            <h6>Change club profile picture</h6>
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

            <!--Update/Cancel Buttons-->
         <div class="form-group col-lg-12">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" class=" btn btn-success btn-rounded" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" CausesValidation="False" UseSubmitBehavior="False" />   
          </div>
        </div>
      </div>
  </div>
</div>
</asp:Content>
