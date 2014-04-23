<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="WebPages_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Products!</h1>
    <div id="coolProducts">
        <h2>Cool Bikes</h2>
        <a href="CoolProducts.aspx"><img class="productMainCategories" src="../Pictures/Products/Cool/unicornBike.jpg" /></a>
    </div>
    <div id="seriousProducts">
        <h2>Serious Bikes</h2>
        <a href="SeriousProducts.aspx"><img class="productMainCategories" src="../Pictures/Products/Serious/roadBike.jpg"/></a>
    </div>
    <div id ="shirtsAndCakeProducts">
        <h2>Shirts and Cake</h2>
        <a href="ShirtsAndCakeProducts.aspx"><img class="productMainCategories" src="../Pictures/Products/ShirtsAndCake/rainbowCake.jpg" /></a>
    </div>
</asp:Content>

