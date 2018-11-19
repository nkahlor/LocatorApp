<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberLogin.aspx.cs" Inherits="LocatorApp.MemberLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
     <h1>Member Login</h1>
         <p>
             <asp:Label ID="Username_lbl" runat="server" Text="Username"></asp:Label>
             <asp:TextBox ID="Username_Text" runat="server"></asp:TextBox>
         </p>
         <asp:Label ID="Password_Lbl" runat="server" Text="Password"></asp:Label>
         <asp:TextBox ID="Password_Text" runat="server"></asp:TextBox>
         <br />
         <asp:Button ID="Login_Btn" runat="server" OnClick="Login_Btn_Click" Text="Login" />
     </form>
</body>
</html>
