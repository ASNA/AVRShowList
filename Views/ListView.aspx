<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="ListView.aspx.vr" Inherits="Views_ListView" Title="Untitled Page" %>

<%@ Import Namespace="System.Data" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
<div class="container">
       <table class="table table-striped"> 
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Print</th>
                </tr>
            </thead>         
           <tbody>
               <asp:ListView ID="listviewCustomers" runat="server">
                    <LayoutTemplate>
                        <section class="">
                            <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                        </section>
                    </LayoutTemplate>

<%--Data specific starts.--%>                   
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%--See the Import statement at the top of this page.--%> 
                                <%--Short-hand reference OK if compiler can find class. Import does that.--%>
                                <%# (Container.DataItem *As DataRowView)['CMCustNo'] %>
                            </td>
                            <td>
                                <%# (Container.DataItem *As System.Data.DataRowView)["CMName"] %>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Button" />
                            </td>
                        </tr>
                    </ItemTemplate>
<%--Data specfic ends.--%>

                </asp:ListView>
          </tbody>                                
    </table>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

