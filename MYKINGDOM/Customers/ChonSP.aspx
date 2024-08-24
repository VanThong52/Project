<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ChonSP.aspx.cs" Inherits="MYKINGDOM.ChonSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            margin-top: 0px;
        }
        .auto-style23 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Image ID="Imagesp" runat="server" Height="180px" Width="200px" />
    </p>
    <p>
        <strong>
        <asp:Label ID="lbtensp" runat="server" CssClass="auto-style23"></asp:Label>
        </strong>
    </p>
    <p>
        <asp:Label ID="lbmsp" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbth" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lbgia" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbdvt" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lbghichu" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btntru" runat="server" Text="-" OnClick="Button1_Click" Height="30px" Width="30px" />
        <asp:TextBox ID="txtsl" runat="server" CssClass="auto-style22" Height="30px" Width="50px">1</asp:TextBox>
        <asp:Button ID="btncong" runat="server" Text="+" OnClick="Button2_Click" Height="30px" Width="30px" />
    </p>
    <p>
        <asp:Button ID="btndathang" runat="server" Text="Tiếp tục mua hàng" BackColor="#CC0000" BorderColor="White" ForeColor="White" Height="50px" Width="300px" PostBackUrl="~/TrangChu.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btngiohang" runat="server" OnClick="btngiohang_Click" Text="Thêm vào giỏi hàng" BackColor="#CC0000" ForeColor="White" Height="50px" Width="350px" />
        <br />
    </p>
</asp:Content>
