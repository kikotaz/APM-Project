<%@ Page Title="" Language="C#" MasterPageFile="~/APMShared.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ApmProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <h3>You have logged in successfully</h3>
        <span>Welcome </span>
        <asp:Label ID="welcomeLabel" runat="server"></asp:Label>
    </div>
</asp:Content>
