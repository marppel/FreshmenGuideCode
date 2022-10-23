<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="GuideCategory.aspx.cs" Inherits="COMP3851B.Views.User.TutorialGuide.GuideCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <meta name="viewport" content="width-device-width, initial scale=1.0" />
    <link rel="stylesheet" href="../../../CSS/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:100px;">
        <h3 id="lblHeader" runat="server"></h3>

        <br />

        <div class="container">
            <div class="input-group mb-3">
                <asp:TextBox ID="TextBox1" class="form-control col-8" type="search" placeholder="Search" aria-label="Search" runat="server"></asp:TextBox>
              <div class="input-group-append">
                <asp:Button ID="Button1" class="btn btn-outline-success col-4" runat="server" Text="Search" style="z-index:-1;"/>
              </div>
            </div>      

            <asp:DataList ID="DLGde" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DLGde_ItemCommand">
                <ItemTemplate>
                    <div class="row">
                        <section class="facilities">
                            <div class="facilities-col col-sm-12">
                                <asp:Image ID="Image1" class="card-img-top" ImageUrl='<%# Bind("gdeThumbnail", "{0}") %>' runat="server" height="220px"  width="280px"/>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("gdeTitle") %>' CommandName="ToGuide" CommandArgument='<%# Eval("gdeID") %>' ></asp:LinkButton>
                            </div>
                        </section>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>
