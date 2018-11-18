<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CryptoTryIt._Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div class="jumbotron">
        <h1>TryIt</h1>
        <p>Scott's Standalone Hash DLL</p>
        <p><a href="http://webstrar25.fulton.asu.edu/" class="btn btn-primary btn-lg">&laquo; Return to Index</a></p>
    </div>
     
    <div class="row">
        
    <div class="col-md-4">
    <h2>String Hash</h2>
    <p>Enter a string to hash it</p>
    <p>This uses a server-side DLL and there is no link available.</p>
    <p>string Hash ( string input )</p>
    <p><asp:Label runat="server">Input String:</asp:Label><asp:TextBox ID ="inputLabel" runat="server"/></p>
    
    <p>
    <asp:Button ID ="hashSubmit" runat="server" OnClick="btnHash_click" Text ="Go!" />
    <asp:Label runat="server">Hashed String:</asp:Label>
    <asp:Label ID ="outputLabel" runat="server"></asp:Label>
    </p>
    </div>

    </div>

</asp:Content>
