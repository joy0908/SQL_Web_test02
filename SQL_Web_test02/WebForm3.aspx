<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="SQL_Web_test02.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Page3</title>
    <style>
        header {
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
        }
        .center-gridview {
            margin: 0 auto; /* 將左右邊距設為auto，使其在水平方向上居中 */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>商品資訊</h1>
            <hr />
        </header>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChinookConnectionString %>" SelectCommand="SELECT * FROM [Album]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="center-gridview" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AlbumId" DataSourceID="SqlDataSource1" Width="314px">
            <Columns>
                <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" ReadOnly="True" SortExpression="AlbumId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="ArtistId" HeaderText="ArtistId" SortExpression="ArtistId" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        
    </form>
</body>
</html>
