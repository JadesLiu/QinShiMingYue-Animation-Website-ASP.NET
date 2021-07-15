<%@ Page Title="" Language="C#" MasterPageFile="~/background.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationFinal_LJY.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    秦时明月登录页面
    <style type="text/css">
    .back{
        background-image:url(imgs/img_login.jpg);
        background-repeat:no-repeat;

    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
        <div class="back">
            
            <br />
            <br />
            
            姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            密码：<asp:TextBox ID="TextBox2" runat="server" Type="password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
        
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="欢迎来到秦时明月！"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
</asp:Content>
