<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="WebPages_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>About Us</h1>
    <p>The Bikery was created by Alex Maga&ntilde;a and Syrenah Stein in the Spring of 2014, as a requirement of their Web Applications Class.<br /> 
        The Bikery sells bikes and gives out cupcakes for FREE with your order!<br /> 
    </p>
    <h3>Check out our site and order bikes from the best online bike and cupcake company in all of the internets!</h3>
     <div id ="Alex">
            <h4>Alex Maga&ntilde;a</h4>
            <img class="pictureUs" src="../Pictures/AboutUs/Alex.png" alt="Alex Maga&ntilde;a" title="Alex Maga&ntilde;a"/><br />
     </div>
     <div id="captionAlex">
            Alex is a senior who likes bikes.<br /> She's taken more kinesiology classes than any other student in A&M history and any other university in the world. <br /> Seriously.</div>
     <div id="Syrenah">
            <h4>Syrenah Stein</h4>
            <img class="pictureUs" src="../Pictures/AboutUs/Syrenah.png" alt ="Syrenah Stein" title="Syrenah Stein"/><br />
     </div>
     <div id ="captionSyrenah">Syrenah is a junior who likes cupcakes.  She wishes that she could survive solely off banana muffins and Coke in glass bottles.</div>
      <img id="cupcakesImage" src="../Pictures/AboutUs/cupcakes.png" />
</asp:Content>

