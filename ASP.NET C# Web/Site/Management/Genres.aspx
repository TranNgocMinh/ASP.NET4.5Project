﻿<%@ Page Title="Management – Genre" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="Management_Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">       
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="False" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-Width="200px" />
        <asp:BoundField DataField="SortOrder" HeaderText="Sort Order" SortExpression="SortOrder" />
    </Columns>      
        
</asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="SortOrder" HeaderText="SortOrder" SortExpression="SortOrder" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ngocminhtranConnectionString1 %>" DeleteCommand="DELETE FROM [Genre] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Genre] ([Id], [Name], [SortOrder]) VALUES (@Id, @Name, @SortOrder)" ProviderName="<%$ ConnectionStrings:ngocminhtranConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [SortOrder] FROM [Genre]" UpdateCommand="UPDATE [Genre] SET [Name] = @Name, [SortOrder] = @SortOrder WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SortOrder" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SortOrder" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
 <script type="text/javascript">
      $(function()
      {
        $('.GridView tr:odd:not(.GridViewPagerStyle)').
        addClass('GridViewAlternatingRowStyle');
      });
 </script>
</asp:Content>

