<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TimSP.aspx.cs" Inherits="MYKINGDOM.TimSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style23">
        <strong>TÌM KIẾM SẢN PHẨM</strong></p>
<p>
    &nbsp;</p>
<p>
    <asp:DataList ID="dlsp2" runat="server" DataSourceID="scrsp2" RepeatDirection="Horizontal" RepeatColumns="5">
        <ItemTemplate>
            <asp:Image ID="Image16" runat="server" Height="150px" ImageUrl='<%# Eval("Hinhsp") %>' Width="150px" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Customers/ChonSP.aspx?MaSP="+Eval("MaSP") %>' Text='<%# Eval ("Tensp") %>'></asp:HyperLink>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval ("dongia","{0:0,000 VNĐ}") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
</p>
<p>
    <asp:Label ID="lbthongbao" runat="server"></asp:Label>
    </p>
<p>
    <asp:SqlDataSource ID="scrsp2" runat="server" ConnectionString="<%$ ConnectionStrings:MYKINGDOM %>" SelectCommand="SELECT * FROM SANPHAM WHERE Lower(TENSP) LIKE '%Xe%' "></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>
