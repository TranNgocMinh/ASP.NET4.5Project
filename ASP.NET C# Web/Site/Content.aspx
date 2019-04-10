<%@ Page Title="Content" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <h1>Chao mung cac ban den vs ASP.NET</h1>
    <p>Chuc Cac ban thanh cong</p>
    Den voi trang <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx"> dang nhap</asp:HyperLink>
</asp:Content>

