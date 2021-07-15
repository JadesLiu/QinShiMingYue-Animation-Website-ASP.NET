<%@ Page Title="" Language="C#" MasterPageFile="~/background.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplicationFinal_LJY.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    秦时明月用户注册页面
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="Scripts/jquery-3.5.1.min.js"></script>

    <h2>您好，新秦迷！</h2>
    <h3>欢迎进入秦时明月用户注册界面！</h3>

        <div style="font-size:16px;font-family:Arial;">
            
            *姓名： <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="TextBox1"
                ErrorMessage="姓名不能为空！"
                Display="Static" ForeColor="Red">  *姓名不能为空！</asp:RequiredFieldValidator>
            <br />
            <br />
            *设置密码：<asp:TextBox ID="TextBox5" runat="server" Type="password"></asp:TextBox>&nbsp;
            <asp:CompareValidator ID="CompareValidator1" 
                runat="server" 
                ControlToValidate="TextBox5" ControlToCompare="TextBox6"
                ErrorMessage="*两次密码输入不一致！"
                Display="Static" ForeColor="Red"></asp:CompareValidator>
            <br />
            *确认密码：<asp:TextBox ID="TextBox6" runat="server" Type="password"></asp:TextBox>&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="验证" />
            <br />
            <br />
            *性别：<asp:RadioButtonList ID="RadioButtonList1" 
                runat="server" 
                RepeatDirection="Horizontal" 
                style="vertical-align:middle;margin-top:0px;">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="RadioButtonList1"
                ErrorMessage="*请选择性别！"
                Display="Static" ForeColor="Red">  </asp:RequiredFieldValidator>
            <br />
            <br />
          
                   
          生日：  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" 
                runat="server" 
                ControlToValidate="TextBox2"
                ErrorMessage="生日需在1937/1/1至2001/12/31日之间" 
                Type="Date"
                Display="Static" ForeColor="Red" MaximumValue="2001/12/31" MinimumValue="1937/1/1">  *生日需在1937/1/1至2001/12/31日之间</asp:RangeValidator>

           
                   

                <br />
            <br />

           
                   

                *出生地：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" 
                     ControlToValidate="TextBox3"
                    ErrorMessage="出生地不能为空！"
                    Display="Static" ForeColor="Red">  *出生地不能为空！</asp:RequiredFieldValidator>
                
                <br />
            <br />
                
                *联系电话：<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" 
                    ControlToValidate="TextBox4"
                    ErrorMessage="联系电话不能为空！"
                    Display="Static" ForeColor="Red">  *联系电话不能为空！</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" 
                    ControlToValidate="TextBox4"
                    ErrorMessage="电话号码应为11位！"
                    Display="Static" ForeColor="Red" 
                    ValidationExpression="[0-9]{11}$">  *电话号码应为11位！</asp:RegularExpressionValidator>
            <br />
           
                   
            <asp:Button ID="Button1" runat="server"  Text="提交" OnClick="Button1_Click" />
            <br />
                     
        </div>
</asp:Content>

