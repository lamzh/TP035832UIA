<%@ Page Title="Flight Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="DDA.Booking.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div>
        <asp:Label runat="server" ID="Label1" CssClass="col-md-2 control-label">Flight ID:</asp:Label>
        <asp:Label ID="FlightID" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label2" CssClass="col-md-2 control-label">Flight Type:</asp:Label>
        <asp:Label ID="FlightType" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label3" CssClass="col-md-2 control-label">Origin:</asp:Label>
        <asp:Label ID="Origin" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label4" CssClass="col-md-2 control-label">Desination:</asp:Label>
        <asp:Label ID="Desination" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label5" CssClass="col-md-2 control-label">Depart Date: </asp:Label>
        <asp:Label ID="DepartDate" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label6" CssClass="col-md-2 control-label">Return Date: </asp:Label>
        <asp:Label ID="ReturnDate" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    <h3>Customer Details</h3>
        <asp:Label runat="server" ID="Label7" CssClass="col-md-2 control-label">Name: </asp:Label>
        <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label8" CssClass="col-md-2 control-label">Gender: </asp:Label>
        <asp:Label ID="Gender" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label9" CssClass="col-md-2 control-label">IC/Passport: </asp:Label>
        <asp:Label ID="Passport" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label10" CssClass="col-md-2 control-label">Contact Number: </asp:Label>
        <asp:Label ID="ContactNumber" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label11" CssClass="col-md-2 control-label">Email: </asp:Label>
        <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnProceed" runat="server" Text="Proceed" OnClick="btnProceed_Click"  CssClass="btn btn-default"/>
    </div>
</asp:Content>
