<%@ Page Title="" Language="C#" MasterPageFile="~/background.Master" AutoEventWireup="true" CodeBehind="exam.aspx.cs" Inherits="WebApplicationFinal_LJY.exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    秦时明月测试题
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
  
        <div>
    <h2>你是合格的秦迷吗？</h2>
    <h3>让我们来个小测试吧~！</h3>
    <h3>最近一次的称号将会放在“我的称号”中噢！</h3>
    <h5>第一题：</h5>

  1.盖聂带着天明从秦国出逃，在〔〕盖聂自己一人打败三百秦兵？
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.百花谷</asp:ListItem>
                <asp:ListItem Value="1">B.残月谷</asp:ListItem>
                <asp:ListItem Value="0">C.芳英谷</asp:ListItem>
                <asp:ListItem Value="0">D.天穹谷</asp:ListItem>
            </asp:RadioButtonList>
    <h5>第二题：</h5>
    2.无双鬼被〔〕所杀？后有被〔〕改造为机关无双？
        
         
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">A.盖聂、公输仇</asp:ListItem>
                <asp:ListItem Value="0">B.盖聂、班大师</asp:ListItem>
                <asp:ListItem Value="0">C.高渐离、公输仇</asp:ListItem>
                <asp:ListItem Value="0">D.高渐离、班大师</asp:ListItem>
            </asp:RadioButtonList>
     <h5>第三题：</h5>
    3.天明遇到下列人物的先后顺序是？①少羽②高月③盖聂④胜七
         
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.④③①②</asp:ListItem>
                <asp:ListItem Value="0">B.①②③④</asp:ListItem>
                <asp:ListItem Value="1">C.③④①②</asp:ListItem>
                <asp:ListItem Value="0">D.③①④②</asp:ListItem>
            </asp:RadioButtonList>
     <h5>第四题：</h5>
     4.天明所中的阴阳咒印是被（）所下。
         
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.大司命</asp:ListItem>
                <asp:ListItem Value="0">B.少司命</asp:ListItem>
                <asp:ListItem Value="0">C.星魂</asp:ListItem>
                <asp:ListItem Value="1">D.月神</asp:ListItem>
            </asp:RadioButtonList>
      <h5>第五题：</h5>
     5.大司命出场的第一句话是？
         
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.巨子在上，受弟子一拜</asp:ListItem>
                <asp:ListItem Value="0">B.越来越滑稽了</asp:ListItem>
                <asp:ListItem Value="1">C.各位就在此好好活动活动筋骨吧！</asp:ListItem>
                <asp:ListItem Value="0">D.阴阳合手印</asp:ListItem>
            </asp:RadioButtonList>
            <h5>第六题：</h5>
     6.公孙玲珑喜欢齐鲁三杰中的（）。
         
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.颜路</asp:ListItem>
                <asp:ListItem Value="0">B.伏念</asp:ListItem>
                <asp:ListItem Value="1">C.张良</asp:ListItem>
                <asp:ListItem Value="0">D.荀子</asp:ListItem>
            </asp:RadioButtonList>
            <h5>第七题：</h5>
     7.秦时明月中片尾曲《彩虹》的演唱者是（）。
         
            <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.胡彦斌</asp:ListItem>
                <asp:ListItem Value="0">B.周杰伦</asp:ListItem>
                <asp:ListItem Value="0">C.苏小白</asp:ListItem>
                <asp:ListItem Value="1">D.乔楚熙</asp:ListItem>
            </asp:RadioButtonList>
            <h5>第八题：</h5>
     8.下列哪个招式是少司命的招式？
         
            <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">A.万叶飞花流</asp:ListItem>
                <asp:ListItem Value="0">B.聚气成刃</asp:ListItem>
                <asp:ListItem Value="0">C.百步飞剑</asp:ListItem>
                <asp:ListItem Value="0">D.霹雳烤山鸡</asp:ListItem>
            </asp:RadioButtonList>
            <h5>第九题：</h5>
     9.张良说过天明会欠他几个人情？
         
            <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.五</asp:ListItem>
                <asp:ListItem Value="0">B.六</asp:ListItem>
                <asp:ListItem Value="1">C.七</asp:ListItem>
                <asp:ListItem Value="0">D.八</asp:ListItem>
            </asp:RadioButtonList>
            <h5>第十题：</h5>
     10.在墨家禁地，少羽获得下列哪个兵器？
         
            <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">A.非攻</asp:ListItem>
                <asp:ListItem Value="0">B.幻音宝盒</asp:ListItem>
                <asp:ListItem Value="1">C.破阵霸王枪</asp:ListItem>
                <asp:ListItem Value="0">D.墨眉</asp:ListItem>
            </asp:RadioButtonList>
      

            <asp:Button ID="Button1" runat="server" Text="提交答案" OnClick="Button1_Click" />
        </div>



</asp:Content>
