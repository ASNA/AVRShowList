<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="StateList.aspx.vr" Inherits="Views_StateList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<div class="container standard-form-placement">

   <div class="form-group">
     <label for="dropdownStateList">State</label>
     <asp:DropDownList ID="dropdownStateList" cssClass="form-control" ClientIDMode="Static" runat="server"></asp:DropDownList>
   </div>

   <div class="form-group">
       <asp:Button ID="buttonLoadListWithClass" cssClass="btn btn-primary" runat="server" Text="Load list with class" />
       <asp:Button ID="buttonLoadListWithCall" cssClass="btn btn-primary" runat="server" Text="Load list with call" />
       <asp:Button ID="buttonShowSelectedState" cssClass="btn btn-primary" runat="server" Text="Show selected state" />
   </div>
    
   <div class="form-group">
       <asp:Label ID="labelSelectedState" runat="server" Text=""></asp:Label>
   </div>

</div>


</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

