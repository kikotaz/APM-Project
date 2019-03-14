<%@ Page Title="" Language="C#" MasterPageFile="~/APMShared.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ApmProject.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="registerUserMain" class="container">
        <div class="row justify-content-center">
            <div class="form-row w-75">
                <div class="form-group my-3 col-6">
                    <asp:Label ID="firstNameLabel" AssociatedControlID="firstNameInput" runat="server">
                        First Name
                    </asp:Label>
                    <asp:TextBox ID="firstNameInput" runat="server" CssClass="form-control" placeholder="Please enter your first name"></asp:TextBox>
                </div>
                <div class="form-group my-3 col-6">
                    <asp:Label ID="lastNameLabel" AssociatedControlID="lastNameInput" runat="server">
                        Last Name
                    </asp:Label>
                    <asp:TextBox ID="lastNameInput" runat="server" CssClass="form-control" placeholder="Please enter your last name"></asp:TextBox>
                </div>
            </div>
            <div class="form-row w-75">
                <div class="form-group my-3 col-6">
                    <asp:Label ID="emailLabel" AssociatedControlID="emailInput" runat="server">
                        Email
                    </asp:Label>
                    <asp:TextBox ID="emailInput" runat="server" CssClass="form-control" placeholder="Please enter your email" TextMode="Email"></asp:TextBox>
                </div>
                <div class="form-group my-3 col-6">
                    <asp:Label ID="passwordLabel" AssociatedControlID="passwordInput" runat="server">
                        Password
                    </asp:Label>
                    <asp:TextBox ID="passwordInput" runat="server" CssClass="form-control" placeholder="Please enter your password" TextMode="Password"></asp:TextBox>
                </div>
                <div class="text-center w-100">
                    <asp:Button ID="submitUserBtn" runat="server" Text="Submit" CssClass="btn btn-primary loginBtn my-3" OnClick="submitUserBtn_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
