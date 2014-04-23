<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="CoolProducts.aspx.cs" Inherits="WebPages_SubProductPages_CoolProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="CoolProductsPage" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class ="wrapper">
    <h1>Cool Bikes</h1>
    <table class ="subCategoriesTable" >
        <tr>
            <td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Pictures/Products/Cool/1800sBicycle.png" CssClass="productSubCategories" OnClick="ImageButton1_Click" /></td>
            <td><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Pictures/Products/Cool/bambooBike.png" CssClass="productSubCategories" OnClick="ImageButton2_Click"  /></td>  
            <td><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Pictures/Products/Cool/stealthBike.jpg" CssClass="productSubCategories" OnClick="ImageButton3_Click" /></td> 
            <td><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Pictures/Products/Cool/electricBike.jpeg" CssClass="productSubCategories" OnClick="ImageButton4_Click" /></td> 
            <td><asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Pictures/Products/Cool/tallBike.jpg" CssClass="productSubCategories" OnClick="ImageButton5_Click" /></td>                                                                                                  
            <td><asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Pictures/Products/Cool/unicornBike.jpg" CssClass="productSubCategories" OnClick="ImageButton6_Click" /></td>
        </tr>
    </table>
    </div>
    <asp:UpdatePanel ID="subProductDetailsPanel" runat="server"> 
        <ContentTemplate>
            <table >
                
                    <tr>
                        <td><asp:Image ID="selectedImage" runat="server" ImageUrl="~/Pictures/Products/Cool/1800sBicycle.png" Visible="true" CssClass="subProductSelectedImage" /></td>
                        <td><asp:DetailsView ID="productDetails" runat="server" DataSourceID="SqlDataSource1" width="500px"  Visible="true" CssClass="productDetails" ></asp:DetailsView> 
                        <asp:Button ID="addToCartButton" runat="server" Text="Add To Cart!" Visible="True" UseSubmitBehavior="True" CssClass="addToCartButton" OnClick="addToCartButton_Click"/></td>
                        <asp:Label ID="usernamelabel" runat="server" Text="" Visible="false"></asp:Label>   
                        <asp:Label ID="Label1" runat="server" Text="1" Visible ="false"></asp:Label>
                                 
                    </tr>   
            </table>             
        </ContentTemplate>    
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ImageButton1" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton2" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton3" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton4" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton5" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="ImageButton6" EventName="Click" />    
            <asp:AsyncPostBackTrigger ControlID="addToCartButton" EventName="Click" />        
        </Triggers>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ma8934_DatabaseConnectionString %>" SelectCommand="SELECT [ProductName], [Description], [Price] FROM [ProjectProducts] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="ProductID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

