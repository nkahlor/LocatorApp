<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="LocatorApp.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Staff Page</h1>
        <asp:Label ID="Add_Member_Lbl" runat="server" Text="Add New Member"></asp:Label>
        <br />
        <asp:Label ID="Member_User_Lbl" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="Member_User_Text" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Member_Pass_Lbl" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="Member_Pass_Text" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Add_Member_Btn" runat="server" OnClick="Add_Member_Btn_Click" Text="Add" />
        <br />
        <br />
        <asp:Label ID="Add_Staff_Lbl" runat="server" Text="Add New Staff"></asp:Label>
        <br />
        <asp:Label ID="Staff_User_Lbl" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="Staff_User_Text" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Staff_Pass_Lbl" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="Staff_Pass_Text" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Add_Staff_Btn" runat="server" OnClick="Add_Staff_Btn_Click" Text="Add" />
        <br />
        <br />
        <asp:Label ID="Member_Lbl" runat="server" Text="Members"></asp:Label>
        <br />
        <asp:Label ID="Member_Html" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Staff_Lbl" runat="server" Text="Staff Members"></asp:Label>
        <br />
        <asp:Label ID="Staff_Html" runat="server"></asp:Label>
    </form>
</body>
</html>
