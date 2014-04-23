<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="WebPages_ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Your Cart!</h1>
   
    
    
    
    
    
     <asp:Button CssClass="addToCartButton" ID="clearCartButton" runat="server" Text="Empty Cart" href="Checkout.aspx"/>
        <asp:Button CssClass="addToCartButton" ID="submitCartButton" runat="server" Text="Continue to Checkout!" OnClick="submitCartButton_Click"/>
</asp:Content>