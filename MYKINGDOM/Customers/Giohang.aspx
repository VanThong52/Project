<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="MYKINGDOM.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            font-size: large;
            width: 1139px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style30 {
            font-size: x-large;
            text-align: left;
            width: 1134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <p class="auto-style22">
        <strong>GIỎ HÀNG</strong></p>
    <asp:GridView ID="grdGioHang" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="grdGioHang_RowCancelingEdit" OnRowDeleting="grdGioHang_RowDeleting" OnRowEditing="grdGioHang_RowEditing" OnRowUpdating="grdGioHang_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MaSP" HeaderText="Mã SP" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
            <asp:BoundField DataField="Dongia" HeaderText="Dơn giá" />
            <asp:BoundField DataField="Soluong" HeaderText="Số lượng" />
            <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <p class="auto-style30">
        <asp:Label ID="lblTongTien" runat="server" CssClass="auto-style13"></asp:Label>
    </p>
    <p class="auto-style23">
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/TrangChu.aspx" CssClass="auto-style13">&lt;&lt;Tiếp tục mua hàng</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#CC0000" NavigateUrl="~/Customers/Donhang.aspx" CssClass="auto-style13">Đặt hàng&gt;&gt;</asp:HyperLink>
    </p>
</asp:Content>
