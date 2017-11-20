<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url('http://localhost:35780/Image/1200px-Ukraine_International_Airlines_Logo.svg.png');background-size:contain;background-repeat:no-repeat; background-position:right">
        <h1>Hello US! Book your flight now</h1>
        <p class="lead">Hello US, Ukraine International Airlines is a web site for booking flight tickets.</p>
        <p><a runat="server" href="~/SearchFlight" class="btn btn-primary btn-lg">Book Now &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                First you need to sign up for an account before proceeding to purchase the ticket.
            </p>
            <p>
                <a runat="server" class="btn btn-default" href="~/Account/Register">Register Now &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get know about us</h2>
            <p>
                Ukraine International Airlines is a website that APU student has created to complete his project. To further know about this website press button below.
            </p>
            <p>
                <a runat="server" class="btn btn-default" href="~/Contact">Know more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
