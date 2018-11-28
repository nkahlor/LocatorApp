<%@ Page Title="Member Page" Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="LocatorApp.Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <h1>Member's Page</h1>
        <asp:Label ID="Member_Info_Lbl" runat="server" Text="Location Data"></asp:Label>
        <br />
        <asp:Label ID="Member_State_Lbl" runat="server" Text="State"></asp:Label>
        <asp:TextBox ID="Member_State_Text" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Member_Zip_Lbl" runat="server" Text="ZIP Code"></asp:Label>
        <asp:TextBox ID="Member_Zip_Text" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Save" runat="server" OnClick="Save_Info_Btn_Click" Text="Save" />
        <asp:Button ID="Load" runat="server" OnClick="Load_Info_Btn_Click" Text="Load" /> <br />
        <asp:Label ID="SaveLoadInfo" runat="server" Text="" />
        <br />
        <br />
        <asp:Button ID="Process" runat="server" OnClick="Process_Info_Btn_Click" Text="Get Info on this area" /> <br />
        <asp:Label ID="ProcessInfo" runat="server" Text="" />
        <br />
        <br />

        <asp:Label ID="CrimeLabel" runat="server" Text="Crime Data goes here..."></asp:Label>
        <br />
        <br />
        <asp:Label ID="LocalityLabel" runat="server" Text="Locality Data goes here..."></asp:Label>
        <br />
        <br />
        <asp:Label ID="NearestStoreLabel" runat="server" Text="Store Data goes here..."></asp:Label>
        <br />
        <br />
        <asp:Label ID="WeatherLabel" runat="server" Text="Weather Data goes here..."></asp:Label>
    </form>
</body>
</html>
