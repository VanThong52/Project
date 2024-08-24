<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="MYKINGDOM.trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:DataList ID="listsp" runat="server" RepeatDirection="Horizontal" Width="770px" Height="95px" DataKeyField="MASP" DataSourceID="scrsp" RepeatColumns="5">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image10" runat="server" Height="170px" Width="200px" ImageUrl='<%# Eval("HINHSP") %>' />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("tensp") %>' NavigateUrl='<%# "~/Customers/ChonSP.aspx?MaSP="+Eval("MaSP") %>'></asp:HyperLink>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Dongia", "{0:0,000 VNĐ}") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</p>
<p>
    <asp:SqlDataSource ID="scrsp" runat="server" ConnectionString="<%$ ConnectionStrings:MYKINGDOM %>" ProviderName="<%$ ConnectionStrings:MYKINGDOM.ProviderName %>" SelectCommand="select masp, tensp, maloai, donvitinh, dongia, hinhsp from sanpham where maloai = 'DC02'"></asp:SqlDataSource>
</p>
<p>
</p>
</asp:Content>
