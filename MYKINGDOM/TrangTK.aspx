<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TrangTK.aspx.cs" Inherits="MYKINGDOM.TrangTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    TÌM KIẾM SẢN PHẨM<br />
    <br />
    <asp:DataList ID="dlsptk" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image16" runat="server" Height="150px" ImageUrl='<%# Eval("hinhsp") %>' Width="150px" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("tensp") %>'></asp:HyperLink>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("dongia","{0:0,000 VNĐ}") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="scrsp" runat="server"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>
