<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/BikeryMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="WebPages_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h1>Welcome to the Bikery!</h1>
    <img id="homepageBike" src="../Pictures/bambooBikeTransparent.png" />
   
<%--    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>

           <div id="newAccountCreationDiv">
     <h2>New User</h2>
    <asp:DetailsView CssClass="newAccountDetailsView" ID="newAccountDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="LoginID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="336px">
        <Fields>
            <asp:TemplateField HeaderText="Username" SortExpression="Username">
                <InsertItemTemplate>
                    <asp:TextBox CssClass="formTextBox" ID="TextBox1" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your username" Text="*Enter your username" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <InsertItemTemplate>
                    <asp:TextBox CssClass="formTextBox" ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator  CssClass="ErrorMessage" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your password" Text="*Enter your password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your password must be at least 8 characters long" Display="Dynamic" ValidationExpression="^[\s\S]{8,}$" ControlToValidate="TextBox2" Text="*Your password must be at least 8 characters long" CssClass="ErrorMessage"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Confirm Password">
                <InsertItemTemplate>
                    <asp:TextBox CssClass="formTextBox" ID="TextBox3" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm your password" Text="*Confirm your password" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The passwords do not match" Display="Dynamic" CssClass="ErrorMessage" Text="*The passwords do not match" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <InsertItemTemplate>
                    <asp:TextBox CssClass="formTextBox" ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your email" Text="*Enter your email" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label CssClass="formTextBox" ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ControlStyle-CssClass="detailsViewButton" ItemStyle-CssClass="detailsViewButtonPanel" ButtonType="Button" DeleteText="Clear" InsertText="Submit" NewText="" ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ma8934_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [ProjectLogins] WHERE [LoginID] = @LoginID" InsertCommand="INSERT INTO [ProjectLogins] ([Username], [Password], [Email]) VALUES (@Username, @Password, @Email)" SelectCommand="SELECT * FROM [ProjectLogins]" UpdateCommand="UPDATE [ProjectLogins] SET [Username] = @Username, [Password] = @Password, [Email] = @Email WHERE [LoginID] = @LoginID">
        <DeleteParameters>
            <asp:Parameter Name="LoginID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="LoginID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    

                                                      </ContentTemplate><Triggers>

                                                             

                                                                        </Triggers>

    </asp:UpdatePanel>
  --%>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>    
            <div id ="returningUserLoginDiv">
            <h2>Returning User</h2>
            <asp:Label ID="IDLabel" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="LoginButton" runat="server" Text="Log In"  OnClick="LoginButton_Click" />
            <asp:Button ID="LogoutButton" runat="server" Text="Log Out" OnClick="LogoutButton_Click" />
        </ContentTemplate>    
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="LoginButton" EventName="Click"/>    
            <asp:AsyncPostBackTrigger ControlID="LogoutButton" EventName="Click" />    
        </Triggers>
        </asp:UpdatePanel>
        
        
</asp:Content>

