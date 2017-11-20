<%@ Page Title="Search Flight" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchFlight.aspx.cs" Inherits="DDA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Search</h3>
    <div class="form-group">
        <asp:TextBox ID="txtOrigin" runat="server" CssClass="form-control" placeholder="Origin"></asp:TextBox>
        <asp:TextBox ID="txtDestination" runat="server" CssClass="form-control" placeholder="Destination"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search"  CssClass="btn btn-default" OnClick="btnSearch_Click"/>
    </div>
    <h3>Flight Details</h3>
    <div class="form-group">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="No Flights" CssClass="text-danger"></asp:Label>
    </div>
</asp:Content>
