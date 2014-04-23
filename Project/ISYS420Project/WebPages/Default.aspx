<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WebPages_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Bikery</title>
    <link href="../Styles/MasterStyleSheet.css" rel="stylesheet" />
</head>
<body id="defaultBody">
    <form id="defaultPage" runat="server">   
        <nav>
		    <ul>
			    <li><a href="Home.aspx">Home</a></li> 
			    <li><a href="Products.aspx">Products</a></li>
                <li><a href="ViewCart.aspx">View Cart</a></li>
			    <li><a href="AboutUs.aspx">About Us</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
		    </ul>
	    </nav>
        <img id="rainUniImage" src="../Pictures/RainUnicornWelcome.png" />
    </form>
</body>
</html>
