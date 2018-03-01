<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="login.aspx.vr" Inherits="Views_login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div class="container">

        <div class="form-group">
            <label for="dbSelect">Database environment</label>
            <asp:DropDownList ID="dbSelect" cssClass="form-control" runat="server" ClientIDMode="Static">
                <asp:ListItem Value="development">Development</asp:ListItem>
                <asp:ListItem Value="test">Test</asp:ListItem>
                <asp:ListItem Value="production">Production</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <div class="form-group">
            <label for="user">User</label>
            <asp:TextBox placeholder="User name" CssClass="form-control" ID="user" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="form-text error-message" ID="userRequiredValidator" 
                ControlToValidate="user" runat="server" 
                ErrorMessage="Please enter user name" 
                Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <asp:TextBox placeholder="password" CssClass="form-control" ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="form-text error-message" ID="passwordRequiredValidator" 
                                        ControlToValidate="user" runat="server" ErrorMessage="Please enter your password" 
                                        Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-check">
            <asp:CheckBox CssClass="form-check-input" ID="rememberme" runat="server" />
            <label class="form-check-label" for="rememberme">Remember me</label>
        </div>
       
        <div class="action-row"> 
            <asp:Button CssClass="btn btn-primary" ID="buttonlogin" runat="server" Text="Login" />
            <asp:CustomValidator CssClass="alert alert-danger" ID="loginFailedValidator" runat="server" 
                                 ErrorMessage="Login failed" Display="Dynamic"></asp:CustomValidator>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

