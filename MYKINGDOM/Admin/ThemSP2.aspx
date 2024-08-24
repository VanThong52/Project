<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemSP2.aspx.cs" Inherits="MYKINGDOM.Admin.ThemSP2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style36 {
        height: 607px;
    }
    .auto-style22 {
        width: 69%;
            height: 553px;
        }
        .auto-style33 {
            height: 50px;
        }
        .auto-style41 {
        font-size: medium;
        width: 357px;
        text-align: left;
    }
    .auto-style42 {
        width: 350px;
        text-align: center;
    }
        .auto-style43 {
            font-size: x-large;
            text-align: center;
            height: 42px;
        }
    .auto-style44 {
        text-align: left;
    }
    .auto-style45 {
        font-size: medium;
        width: 357px;
        text-align: center;
    }
    .auto-style46 {
        font-size: medium;
        width: 357px;
        text-align: center;
        height: 42px;
    }
    .auto-style47 {
        width: 350px;
        text-align: center;
        height: 42px;
    }
    .auto-style48 {
        width: 350px;
        text-align: right;
    }
    .auto-style49 {
        text-align: center;
        height: 50px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style36">
    <table class="auto-style22" align="center">
        <tr>
            <td class="auto-style43" colspan="2"><strong>THÊM SẢN PHẨM</strong></td>
        </tr>
        <tr>
            <td class="auto-style45">Mã SP:</td>
            <td class="auto-style42">
                <asp:TextBox ID="txbmsp" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Tên SP:</td>
            <td class="auto-style42">
                <asp:TextBox ID="txbtsp" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">Loại SP:</td>
            <td class="auto-style47">
                <asp:DropDownList ID="drplsp" runat="server" BackColor="White" DataSourceID="scrloaisp" DataTextField="TENLOAI" DataValueField="MALOAI" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">Đơn giá:</td>
            <td class="auto-style47">
                <asp:TextBox ID="txtdg" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Đơn VT:</td>
            <td class="auto-style42">
                <asp:DropDownList ID="drpdvt" runat="server" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Thương hiệu:</td>
            <td class="auto-style42">
                <asp:DropDownList ID="drpth" runat="server" DataSourceID="scrth" DataTextField="TENTH" DataValueField="MATH" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Ghi chú:</td>
            <td class="auto-style42">
                <asp:TextBox ID="txtgc" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Hình SP:</td>
            <td class="auto-style48">
                <asp:FileUpload ID="uphinh" runat="server" Width="350px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style41">
                <asp:SqlDataSource ID="scrth" runat="server" ConnectionString="<%$ ConnectionStrings:MYKINGDOM %>" SelectCommand="SELECT * FROM [THUONGHIEU]"></asp:SqlDataSource>
            </td>
            <td class="auto-style44">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="scrloaisp" runat="server" ConnectionString="<%$ ConnectionStrings:MYKINGDOM %>" SelectCommand="SELECT * FROM [LOAISP]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style28">
                <asp:Button ID="btnthem" runat="server" BackColor="#CC0000" ForeColor="White" Height="45px" OnClick="btnthem_Click" Text="Thêm" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhb" runat="server" BackColor="#CC0000" ForeColor="White" Height="45px" OnClick="btnhb_Click" Text="Hủy bỏ" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style49">
                <asp:Label ID="lbtrangthai" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style49">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/Admin/CTSanpham.aspx">&lt;&lt;Chi tiết SP</asp:HyperLink>
            </td>
        </tr>
        </table>
</div>
</asp:Content>
