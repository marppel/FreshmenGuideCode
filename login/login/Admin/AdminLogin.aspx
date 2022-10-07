<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="login.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <br />
    
     <div class="page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
            <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                <div class="pr-lg-5">
                    <img src="../Images/study.jpg" alt="" class="img-fluid" />

                </div>

            </div>
                    <br />
                    <br />
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">Login here</h1>
                        <h3 class="text-uppercase mb-4">Welcome back</h3>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtUsername" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="email" runat="server"></asp:TextBox>
                            

                        </div>
                          <div class="form-group mb-4">
                            <asp:TextBox ID="txtPass" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server"></asp:TextBox>
                            

                        </div>

                         <div class="form-group mb-4">
                         <div class="custom-control custom-checkbox">
                             <asp:CheckBox ID="xbxrememberme" runat="server" Text="&nbspRemember Me" />
                         </div>    
                         </div>
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary"  Height="50px" Width="400px"/>
                        <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btn btn-primary" Height="50px" Width="400px" />
                        <br />
                        <br />
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" Height="50px" Width="400px" OnClick="btnRegister_Click" />
                    </div>

        </div>
        </div>
        </div>   
       
    </form>
</body>
</html>
