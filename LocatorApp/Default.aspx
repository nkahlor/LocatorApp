<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LocatorApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-page">
        <h1>Welcome to the Locator App!</h1>
        <p>This application allows you to input a set of conditions for your ideal living conditions. We will analyze these choices, and based on them
            report back where we think you would enjoy living!
        </p>
        <p>To access this application, please click the &#39;Members&#39; button. If you are not already logged in, we will ask you to enter your credentials or sign up for a free membership.</p>
        <p>To view information about the services used to implement the application and test them individually, please click the &#39;Service Directory&#39; button.</p>
        <p>Only authorized staff will be able to access the staff page through the &#39;Staff&#39; button.</p>
        <p>
            <asp:Button ID="Member_Btn" runat="server" Text="Members" Width="150px" OnClick="Member_Btn_Click" />
            <asp:Button ID="Staff_Btn" runat="server" Text="Staff" Width="150px" OnClick="Staff_Btn_Click" />
            <asp:Button ID="Directory_Btn" runat="server" Text="Service Directory" Width="150px" OnClick="Directory_Btn_Click" />
        </p>
        <p>
            This Application will request the following input from you to match you with an area:</p>
        <p>
            &nbsp;</p>
        <p>Developed by Nick Kahlor and Scott Molt</p>
    </div>
    

</asp:Content>
