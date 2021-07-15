<%@ Page Title="" Language="C#" MasterPageFile="~/background.Master" AutoEventWireup="true" CodeBehind="Mytitle.aspx.cs" Inherits="WebApplicationFinal_LJY.Mytitle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    我的称号
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    你目前的称号为：<asp:Label ID="Label1" forecolor="orange" runat="server" Text="点击按钮获取称号"></asp:Label>   
    <br />
    <asp:Button ID="Button1" runat="server" Text="请点我！" OnClick="Button1_Click" />
    
</asp:Content>
