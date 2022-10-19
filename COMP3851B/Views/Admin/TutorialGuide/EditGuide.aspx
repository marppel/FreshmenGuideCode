<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditGuide.aspx.cs" Inherits="COMP3851B.Views.Admin.CourseGuide.AddCourseGuide" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!--summernote -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

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
            <h2>Tutorial Guide</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="lblTitle" runat="server"  CssClass="col-12 control-label" Text="Title"></asp:Label>
                    <div class="col-12"> 
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Enter the title of the tutorial guide"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server"  CssClass="col-2 control-label" Text="Category"></asp:Label>
                <div class="col-12"> 
                    <asp:DropDownList ID="ddlCat" runat="server">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblDesc" runat="server"  CssClass="col-2 control-label" Text="Enter the description of the tutorial guide"></asp:Label>
                <div class="col-12">
                     <asp:TextBox ID="txtSummernote" runat="server" TextMode="MultiLine"></asp:TextBox>
                     <asp:Label ID="lblSum" runat="server" Text="Summernote"></asp:Label>
                  </div>
             </div>

            <!--CRUD buttons -->
            <div id="crud">
                <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
            </div>
            <br /><br />
            <div class="gridview">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                </asp:GridView>
            </div>
                  
        </div>
    </div> 

    <!--summernote script -->
    <!--***************************************************************************************
    *    Title: "Here is My code Working Perfectly"
    *    Author/Username: PK-1825
    *    Date: 27 Dec, 2016
    *    Availability: https://stackoverflow.com/questions/36462787/is-it-possible-to-get-value-from-summernote-editor-in-asp-net-web-forms
    *
    ***************************************************************************************/-->
    <script>
        $(function () {
            // Set up your summernote instance
            $("#<%= txtSummernote.ClientID %>").summernote();
            focus: true
            // When the summernote instance loses focus, update the content of your <textarea>
            $("#<%= txtSummernote.ClientID %>").on('summernote.blur', function () {
                $('#<%= txtSummernote.ClientID %>').html($('#<%= txtSummernote.ClientID %>').summernote('code'));
           });
        });
    </script>
    <script type="text/javascript">
        function funcMyHtml() {
            debugger;
            document.getElementById("#<%= txtSummernote.ClientID %>").value = $('#<%= txtSummernote.ClientID %>').summernote('code');
        }
    </script>
</asp:Content>