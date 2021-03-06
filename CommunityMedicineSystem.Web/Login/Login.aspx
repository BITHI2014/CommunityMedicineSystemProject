﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CommunityMedicineSystem.Web.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <link href="../Content/style.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../Index.aspx">Community Medicine System</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="../Index.aspx">Home <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="http://www.facebook.com"><i class="fa fa-facebook-official fa-2x"></i></a></li>
                    <li><a href="http://www.twitter.com"><i class="fa fa-twitter fa-2x"></i></a></li>
                    <li><a href="http://www.youtube.com"><i class="fa fa-youtube fa-2x"></i></a></li>
                    <li class="active"><a href="#">Centers</a></li>
                    <li><a href="#">Head Office</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="page-header">
        <div class="form-group">
            <h1 style="margin-left: -200px;">Log in</h1>
        </div>
    </div>
    <div class="container content_top">
        <form class="form-horizontal" runat="server" id="loginForm">
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    <span style="margin-right: 5px;"><i class="fa fa-h-square"></i>
                    </span>Center Code</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="codeTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Password</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="passwordTextBox" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>  
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="loginButton" runat="server" CssClass="btn btn-success" Text="Log in" OnClick="loginButton_Click" />
                </div>
            </div>
            <div class="alert alert-success">
                <p><asp:Label ID="messageLabel" runat="server" Text=""></asp:Label></p>
            </div>
        </form>
    </div>
    <script src="../HeadOffice/../Scripts/bootstrap.js"></script>
    <script src="../HeadOffice/../Scripts/jquery-2.1.3.js"></script>
    <script src="../HeadOffice/../Scripts/jquery.validate.js"></script>
    <script src="../HeadOffice/../Scripts/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#loginForm").validate({
                rules: {
                    codeTextBox: "required",
                    passwordTextBox: "required"
                },
                messages: {
                    codeTextBox: "please enter center's code",
                    passwordTextBox: "enter center's password"
                }
            });
        });
    </script>
</body>

</html>
