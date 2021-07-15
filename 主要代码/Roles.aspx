<%@ Page Title="" Language="C#" MasterPageFile="~/background.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="WebApplicationFinal_LJY.Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Roles" GridLines="Horizontal" AllowPaging="True" PageSize="1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Width="991px">
            <Columns>

        <asp:TemplateField HeaderText ="编辑角色信息">
            <ItemTemplate><b>
                <div style="border-radius:5px;box-shadow:5px 3px grey; width:500px;border:1px dotted green; margin:10px;padding:5px">
                    <%# Eval ("角色ID") %>-<%# Eval ("身份") %><%# Eval ("姓氏") %><%# Eval ("名字") %><hr /></b><%# Eval ("年龄") %><br /><%# Eval ("备注") %><br /><br /></div>
            </ItemTemplate>

            <EditItemTemplate><b></b>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("角色ID") %>' /> -
                <asp:DropDownList id="dropdownlist1" runat="server"
                    DataSource="<%# CourtesyTitle %>"
                    SelectedValue='<%# Bind("身份") %>' AutoPostBack="False">
                </asp:DropDownList>
                <%# Eval ("姓氏") %><%# Eval ("名字") %><hr /></b>
                <%# Eval ("年龄") %><br />
                <asp:TextBox ID="TextBox5" runat="server"
                    Text='<% # Bind("年龄") %>'
                    TextMode="MultiLine"></asp:TextBox><br />
                <asp:TextBox ID="TextBox1" runat="server"
                    Text='<% # Bind("备注") %>'
                    TextMode="MultiLine"></asp:TextBox><br />           
            </EditItemTemplate>

            <InsertItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("角色ID") %>' /> -

                <asp:DropDownList id="dropdownlist1" runat="server"
                    DataSource="<%# CourtesyTitle %>"
                    SelectedValue='<%# Bind("身份") %>' AutoPostBack="False">
                </asp:DropDownList>

                <asp:TextBox ID="TextBox2" runat="server"
                    Text='<% # Bind("姓氏") %>'
                    TextMode="MultiLine"></asp:TextBox><br />

                <asp:TextBox ID="TextBox3" runat="server"
                    Text='<% # Bind("名字") %>'
                    TextMode="MultiLine"></asp:TextBox><br />

                <asp:TextBox ID="TextBox4" runat="server"
                    Text='<% # Bind("年龄") %>'
                    TextMode="MultiLine"></asp:TextBox><br />

                <asp:TextBox ID="TextBox1" runat="server"
                    Text='<% # Bind("备注") %>'
                    TextMode="MultiLine"></asp:TextBox><br />
            </InsertItemTemplate>

        </asp:TemplateField>
                <asp:ImageField DataImageUrlField="照片" DataImageUrlFormatString="/imgs/{0}" HeaderText="照片" >
                </asp:ImageField>
            <asp:CommandField HeaderText="操作" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center" ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" DeleteText="删" EditText="改" NewText="创" >
<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_Roles" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [秦时角色] WHERE [角色ID] = @角色ID" InsertCommand="INSERT INTO [秦时角色] ([姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (@姓氏, @名字, @身份, @年龄, @照片, @备注)" SelectCommand="SELECT * FROM [秦时角色]" UpdateCommand="UPDATE [秦时角色] SET  [身份] = @身份, [年龄] = @年龄, [备注] = @备注 WHERE [角色ID] = @角色ID">
            <DeleteParameters>
                <asp:Parameter Name="角色ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="姓氏" Type="String" />
                <asp:Parameter Name="名字" Type="String" />
                <asp:Parameter Name="身份" Type="String" />
                <asp:Parameter Name="年龄" Type="String" />
                <asp:Parameter Name="照片" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓氏" Type="String" />
                <asp:Parameter Name="名字" Type="String" />
                <asp:Parameter Name="身份" Type="String" />
                <asp:Parameter Name="年龄" Type="String" />
                <asp:Parameter Name="照片" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="角色ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>


