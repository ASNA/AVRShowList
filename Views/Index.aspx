<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="Index.aspx.vr" Inherits="Index" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
    <!-- head -->

    <%
    If (HttpContext.Current.IsDebuggingEnabled)     
    %>
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~")%>assets/css/two-column-layout.css">
    <%
    Else
    %>
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~")%>assets/css/two-column-layout.css">
    <%
    EndIf 
    %>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <!-- content -->

<div class="container">    
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:GridView ID="gridviewCustomers" runat="server" EnableViewState="False"></asp:GridView>
</div>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" Runat="Server">
    <!-- page scripts -->
    <script src="index.js"></script>
</asp:Content>
