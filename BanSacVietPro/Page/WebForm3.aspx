<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="BanSacVietPro.Page.WebForm3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Vung" DataSourceID="SqlDataSource2" OnItemCommand="DataList1_ItemCommand2" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Mota") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Vung") %>'></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../img/"+Eval("HinhAnh") %>' />
            <br />
            <asp:Button ID="Button1" runat="server" CommandName="See" Text="Button" CommandArgument='<%# Eval("Vung") %>'/>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="See" CommandArgument='<%# Eval("Vung") %>'>LinkButton</asp:LinkButton>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString3 %>" SelectCommand="SELECT * FROM [LoaiVung]"></asp:SqlDataSource>

</asp:Content>
