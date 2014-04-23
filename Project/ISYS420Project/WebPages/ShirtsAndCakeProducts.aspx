<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="ShirtsAndCakeProducts.aspx.cs" Inherits="WebPages_SubProductPages_ShirtsAndCakeProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class ="wrapper">
    <h1>Shirts and Cupcakes!</h1>
    <table class ="subCategoriesTable" >
        <tr>
            <td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Pictures/Products/ShirtsAndCake/bikeryshirt.png" CssClass="productSubCategories" OnClick="ImageButton1_Click" /></td>
            <td><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Pictures/Products/ShirtsAndCake/hamburgerCake.jpg" CssClass="productSubCategories" OnClick="ImageButton2_Click"  /></td>  
            <td><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Pictures/Products/ShirtsAndCake/rainbowCake.jpg" CssClass="productSubCategories" OnClick="ImageButton3_Click" /></td> 
            <td><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Pictures/Products/ShirtsAndCake/coneCake.jpg" CssClass="productSubCategories" OnClick="ImageButton4_Click" /></td> 
            <td><asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Pictures/Products/ShirtsAndCake/unicornCake.jpg" CssClass="productSubCategories" OnClick="ImageButton5_Click" /></td>                                                                                                  
        </tr>
    </table>
    </div>
    <asp:UpdatePanel ID="subProductDetailsPanel" runat="server"> 
        <ContentTemplate>
            <table >
                <asp:Label ID="Label1" runat="server" Text="1" Visible ="false"></asp:Label>
                    <tr>
                        <td><asp:Image ID="selectedImage" runat="server" ImageUrl="~/Pictures/Products/ShirtsAndCake/bikeryshirt.png" Visible="false" CssClass="subProductSelectedImage" /></td>
                        <td><asp:DetailsView ID="productDetails" runat="server" DataSourceID="SqlDataSource1" Visible="false" CssClass="productDetails" ></asp:DetailsView> 
                        <asp:Button ID="addToCartButton" runat="server" Text="Add To Cart!" Visible="false" UseSubmitBehavior="True" CssClass="addToCartButton"/></td>
                    </tr>   
            </table>             
        </ContentTemplate>    
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ImageButton1" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton2" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton3" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton4" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton5" EventName="Click" />       
            <asp:AsyncPostBackTrigger ControlID="addToCartButton" EventName="Click" />        
        </Triggers>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ma8934_DatabaseConnectionString %>" SelectCommand="SELECT [ProductName], [Description], [Price] FROM [ProjectProducts] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="ProductID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

