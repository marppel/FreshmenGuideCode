<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddCourseCategory.aspx.cs" Inherits="COMP3851B.Views.Admin.CourseGuide.AddCourseCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <h1 class="text-primary">Add New Club Category</h1>
      <hr>
	<div class="row">
      
      <!--Alert-->
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 personal-info">

        <!--Content info-->
        <div>

            <!--CourseCategory Name-->
          <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Name:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCatName" runat="server" class="form-control" placeholder="Enter category name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Category name is required" ControlToValidate="txtCatName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
          </div>

            <!--CourseCategory Description-->
        <div class="form-group">
            <label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label">Description:</label>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
              <asp:TextBox ID="txtCatDesc" runat="server" class="form-control" placeholder="Enter a description"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Description is required" ControlToValidate="txtCatDesc" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
          </div>

            <!--Add/Cancel Button-->
         <div class="form-group col-lg-12">
            <asp:Button ID="btnAdd" runat="server" Text="Add" class=" btn btn-success btn-rounded" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" CausesValidation="False" UseSubmitBehavior="False" />   
          </div>
        </div>
      </div>
  </div>
</div>
</asp:Content>
