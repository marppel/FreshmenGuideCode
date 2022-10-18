<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditCourseCategory.aspx.cs" Inherits="COMP3851B.Views.Admin.CourseGuide.AddCourseCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        #crud:not(:last-child){
            margin-right: 10px;
        }
        hr {
          border: 0;
          clear:both;
          display:block;
          width: 100%;               
          background-color:black;
          height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Search bar -->
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
                <img src="../../../Images/UONEditedLogo.png" width="30px" height="30px" alt="" />
                <div>
                    <h4>School Admin</h4>
                    <small>Admin</small>
                </div>
            </div>

        </header>
    </div>

    <br />

    <!--Form content -->
    <div class="container"  style="margin-left: 280px">
        <div class="form-horizontal">
            <h2>Tutorial Guide Category</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="lblName" runat="server"  CssClass="col-md-2 control-label" Text="Tutorial Guide Category"></asp:Label>
                <div class="col-md-12"> 
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter the name of the new category"></asp:TextBox>
                </div>
            </div>

            <br />

            <!--CRUD buttons -->
            <div id="crud">
                <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
            </div>
            <br /><br />

            <!-- GridView -->
            <div class=" container">
                <asp:GridView ID="GVCat" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                    <Columns>
                        <asp:BoundField HeaderText="Category Id" DataField ="gdeCatId" />
                        <asp:BoundField HeaderText="Category Name" DataField ="gdeCatName" />
                    </Columns>
                </asp:GridView>
            </div>
                  
        </div>
    </div> 

</asp:Content>