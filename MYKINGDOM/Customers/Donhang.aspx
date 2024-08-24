<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Donhang.aspx.cs" Inherits="MYKINGDOM.Donhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 289px;
            height: 42px;
        }
        .auto-style20 {
            height: 42px;
            text-align: left;
        }
        .auto-style21 {
            font-size: small;
            margin-top: 0px;
        }
        .auto-style23 {
        width: 290px;
        text-align: center;
        height: 62px;
    }
    .auto-style24 {
        height: 62px;
    }
    .auto-style25 {
        width: 290px;
        height: 42px;
    }
    .auto-style26 {
        width: 290px;
        text-align: center;
        height: 119px;
    }
        .auto-style34 {
            font-size: large;
        }
        .auto-style35 {
            width: 513px;
            height: 42px;
        }
        .auto-style36 {
            font-size: small;
            height: 62px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <strong>THÔNG TIN ĐƠN HÀNG</strong></p>
    <asp:GridView ID="grdGioHang" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="Mã SP" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
            <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" />
            <asp:BoundField DataField="Soluong" HeaderText="Số lượng" />
            <asp:BoundField DataField="Tongtien" HeaderText="Tổng tiền" />
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
    <p>
        <asp:Label ID="lbtong" runat="server"></asp:Label>
    </p>
    <p>
        <strong>THÔNG TIN KHÁCH HÀNG</strong></p>
    <p>
        <table style="width:100%;" class="auto-style25">
            <tr>
                <td class="auto-style35">Họ tên(*): </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txthoten" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">Email(*):</td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtemail" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">Điện thoại (*):</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtdienthoai" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">Số nhà:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtsonha" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">Phường/Xã:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtphuong" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">Quận/Huyện:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtquan" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">Tỉnh/TP:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txttinh" runat="server" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnthanhtoan" runat="server" CssClass="auto-style34" Text="Thanh toán khi nhận hàng" OnClick="Button1_Click" BackColor="#CC0000" ForeColor="White" Width="450px" />
&nbsp;&nbsp;
                    <asp:Label ID="lbtrangthai" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
