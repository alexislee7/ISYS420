<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="WebPages_Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>User Checkout!</h1>
    <div id="checkoutStepOne">
        <h2>Step One: Review Order</h2>
        Continue, cancel
    </div>
    <div id="checkoutStepTwo">
        <h2>Step Two: Enter Customer Information</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="366px" AutoGenerateRows="False" DataKeyNames="CustomerInfoID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <Fields>
                <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                    <InsertItemTemplate>
                        <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                    <InsertItemTemplate>
                        <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number" SortExpression="Phone">
                    <InsertItemTemplate>
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Shipping Information:"></asp:TemplateField>
                <asp:TemplateField HeaderText="Shipping Address" SortExpression="ShipAddress">
                    <InsertItemTemplate>
                        <asp:TextBox ID="shipAddressTextBox" runat="server" Text='<%# Bind("ShipAddress") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ShipAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="ShipCity">
                    <InsertItemTemplate>
                        <asp:TextBox ID="shipCityTextBox" runat="server" Text='<%# Bind("ShipCity") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("ShipCity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State" SortExpression="ShipState">
                    <InsertItemTemplate>
                        <asp:TextBox ID="shipStateTextBox" runat="server" Text='<%# Bind("ShipState") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("ShipState") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Zip Code" SortExpression="ShipZip">
                    <InsertItemTemplate>
                        <asp:TextBox ID="shipZipTextBox" runat="server" Text='<%# Bind("ShipZip") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("ShipZip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" DeleteText="Clear" NewText="Continue" ShowDeleteButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ma8934_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [ProjectCustomerInfo] WHERE [CustomerInfoID] = @CustomerInfoID" InsertCommand="INSERT INTO [ProjectCustomerInfo] ([CustomerInfoID], [LoginID], [FirstName], [LastName], [Phone], [ShipAddress], [ShipCity], [ShipState], [ShipZip]) VALUES (@CustomerInfoID, @LoginID, @FirstName, @LastName, @Phone, @ShipAddress, @ShipCity, @ShipState, @ShipZip)" SelectCommand="SELECT * FROM [ProjectCustomerInfo]" UpdateCommand="UPDATE [ProjectCustomerInfo] SET [LoginID] = @LoginID, [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [ShipAddress] = @ShipAddress, [ShipCity] = @ShipCity, [ShipState] = @ShipState, [ShipZip] = @ShipZip WHERE [CustomerInfoID] = @CustomerInfoID">
            <DeleteParameters>
                <asp:Parameter Name="CustomerInfoID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerInfoID" Type="Int32" />
                <asp:Parameter Name="LoginID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipState" Type="String" />
                <asp:Parameter Name="ShipZip" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipState" Type="String" />
                <asp:Parameter Name="ShipZip" Type="Decimal" />
                <asp:Parameter Name="CustomerInfoID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        Continue, cancel
    </div>
    <div id="checkoutStepThree">
        <h2>Step 3: Enter Billing Information</h2>
        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="246px" AutoGenerateRows="False" DataKeyNames="BillingInfoID" DataSourceID="SqlDataSource2" DefaultMode="Insert" OnPageIndexChanging="DetailsView2_PageIndexChanging">
            <Fields>
                <asp:TemplateField HeaderText="Same as shipping?">
                    <InsertItemTemplate>
                        <asp:RadioButton ID="yesRadioButton" Text="yes" runat="server" />
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Billing Address" SortExpression="BillAddress">
                    <InsertItemTemplate>
                        <asp:TextBox ID="billAddressTextBox" runat="server" Text='<%# Bind("BillAddress") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("BillAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="BillCity">
                    <InsertItemTemplate>
                        <asp:TextBox ID="billCityTextBox" runat="server" Text='<%# Bind("BillCity") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("BillCity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State" SortExpression="BillState">
                    <InsertItemTemplate>
                        <asp:TextBox ID="billStateTextBox" runat="server" Text='<%# Bind("BillState") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("BillState") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Zip Code" SortExpression="BillZip">
                    <InsertItemTemplate>
                        <asp:TextBox ID="billZipTextBox" runat="server" Text='<%# Bind("BillZip") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("BillZip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" CancelText="Clear" NewText="Continue" ShowDeleteButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ma8934_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [ProjectBillingInfo] WHERE [BillingInfoID] = @BillingInfoID" InsertCommand="INSERT INTO [ProjectBillingInfo] ([BillingInfoID], [LoginID], [BillAddress], [BillCity], [BillState], [BillZip]) VALUES (@BillingInfoID, @LoginID, @BillAddress, @BillCity, @BillState, @BillZip)" SelectCommand="SELECT * FROM [ProjectBillingInfo]" UpdateCommand="UPDATE [ProjectBillingInfo] SET [LoginID] = @LoginID, [BillAddress] = @BillAddress, [BillCity] = @BillCity, [BillState] = @BillState, [BillZip] = @BillZip WHERE [BillingInfoID] = @BillingInfoID">
            <DeleteParameters>
                <asp:Parameter Name="BillingInfoID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BillingInfoID" Type="Int32" />
                <asp:Parameter Name="LoginID" Type="Int32" />
                <asp:Parameter Name="BillAddress" Type="String" />
                <asp:Parameter Name="BillCity" Type="String" />
                <asp:Parameter Name="BillState" Type="String" />
                <asp:Parameter Name="BillZip" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginID" Type="Int32" />
                <asp:Parameter Name="BillAddress" Type="String" />
                <asp:Parameter Name="BillCity" Type="String" />
                <asp:Parameter Name="BillState" Type="String" />
                <asp:Parameter Name="BillZip" Type="Decimal" />
                <asp:Parameter Name="BillingInfoID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        Continue, cancel
    </div>
    <div id="checkoutStepFour">
        <h2>Step 4: Submit Order</h2>
        Submit, cancel
    </div>
    </asp:Content>

