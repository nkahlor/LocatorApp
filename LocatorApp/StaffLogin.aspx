<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="LocatorApp.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
     <h1>Staff Login</h1>
         <p>
             <asp:Label ID="Username_lbl" runat="server" Text="Username"></asp:Label>
             <asp:TextBox ID="Username_Text" runat="server"></asp:TextBox>
         </p>
         <asp:Label ID="Password_Lbl" runat="server" Text="Password"></asp:Label>
         <asp:TextBox ID="Password_Text" runat="server"></asp:TextBox>
         <br />
         <asp:Image ID="Captcha_Img" runat="server" />
         <br />
         <asp:Label ID="Captcha_Lbl" runat="server" Text="Please Enter The Text Shown In The Image Above"></asp:Label>
         <br />
         <asp:TextBox ID="Captcha_Text" runat="server"></asp:TextBox>
         <br />
         <asp:Button ID="Login_Btn" runat="server" OnClick="Login_Btn_Click" Text="Login" />
         <asp:Button ID="Redo_Captcha_Btn" runat="server" OnClick="Redo_Captcha_Btn_Click" Text="New Image"/>
     </form>
</body>
</html>
