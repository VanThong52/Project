<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MYKINGDOM.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style22 {
        margin-bottom: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td><asp:Login ID="Login1" runat="server" BackColor="#CCCCCC" ForeColor="Black" Height="296px" LoginButtonText="Đăng nhập" TitleText="Đăng nhập" Width="633px" DestinationPageUrl="~/Admin/CTSanpham.aspx" CreateUserText="Đăng ký" CreateUserUrl="~/TaoTK.aspx" CssClass="auto-style22">
</asp:Login>
            </td>
        </tr>
    </table>
</asp:Content>
