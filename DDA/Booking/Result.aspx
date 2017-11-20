<%@ Page Title="Result" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="DDA.Booking.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div>
        <asp:Label runat="server" ID="Label1" CssClass="col-md-2 control-label">Flight ID:</asp:Label>
        <asp:Label ID="lblFlightID" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label runat="server" ID="Label2" CssClass="col-md-2 control-label">Reserve Code:</asp:Label>
        <asp:Label ID="lblCode" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" CssClass="btn btn-default"/>
    </div>
</asp:Content>
