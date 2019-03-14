<%@ Page Title="" Language="C#" MasterPageFile="~/APMShared.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ApmProject._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="loginUserMain" class="container">
        <div class="row justify-content-center">
                <div class="form-row w-75">
                    <div class="form-group my-3 col-6">
                        <asp:Label ID="emailLabel" AssociatedControlID="emailInput" runat="server">
                        Email
                        </asp:Label>
                        <asp:TextBox ID="emailInput" runat="server" CssClass="form-control" placeholder="Please enter your e-mail address" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group my-3 col-6">
                        <asp:Label ID="passwordLabel" AssociatedControlID="passwordInput" runat="server">
                        Password
                        </asp:Label>
                        <asp:TextBox ID="passwordInput" runat="server" CssClass="form-control" placeholder="Please enter your password" TextMode="Password"></asp:TextBox>
                        
                    </div>
                    <div class="text-center w-100">
                        <asp:Label ID="wrongDetails" runat="server"></asp:Label>
                    </div>
                    <div class="text-center w-100">
                    <asp:Button ID="submitUserBtn" runat="server" Text="Login" CssClass="btn btn-primary loginBtn my-3" OnClick="submitUserBtn_Click" />
                </div>
                </div>
                
        </div>
    </div>
</asp:Content>
