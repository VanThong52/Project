<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CTSanpham.aspx.cs" Inherits="MYKINGDOM.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style23">
        <strong>CHI TIẾT SẢN PHẨM</strong></p>
    <p class="auto-style22">
        Loại sản phẩm:&nbsp;
        <asp:DropDownList ID="drpth" runat="server" DataSourceID="scrloaisp" DataTextField="TENLOAI" DataValueField="MALOAI" Width="263px" AutoPostBack="True" BackColor="White" Font-Bold="True" ForeColor="Black" Height="35px">
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/Admin/ThemSP2.aspx">&gt;&gt;Thêm SP</asp:HyperLink>
    </p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
        <asp:SqlDataSource ID="scrloaisp" runat="server" ConnectionString="<%$ ConnectionStrings:MYKINGDOM %>" SelectCommand="SELECT * FROM [LOAISP]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="masp" DataSourceID="csrsp" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="4">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="masp" HeaderText="Mã SP" ReadOnly="True" SortExpression="masp" />
                <asp:BoundField DataField="tensp" HeaderText="Tên SP" SortExpression="tensp" />
                <asp:BoundField DataField="maloai" HeaderText="Mã loại" SortExpression="maloai" />
                <asp:BoundField DataField="dongia" HeaderText="Đơn giá" SortExpression="dongia" />
                <asp:BoundField DataField="donvitinh" HeaderText="Đơn vị tính" SortExpression="donvitinh" />
                <asp:BoundField DataField="thuonghieu" HeaderText="Thương hiệu" SortExpression="thuonghieu" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image16" runat="server" Height="106px" ImageUrl='<%# Eval("Hinhsp") %>' Width="116px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="white" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="csrsp" runat="server" ConnectionString="<%$ ConnectionStrings:MYKINGDOM %>" DeleteCommand="delete from sanpham where masp = @masp" SelectCommand="select  masp, tensp, maloai, dongia, donvitinh, thuonghieu, hinhsp from sanpham where maloai = @maloai" UpdateCommand="update sanpham set masp=@masp, tensp = @tensp, maloai = @maloai, dongia = @dongia, donvitinh = @donvitinh where masp = @masp">
            <DeleteParameters>
                <asp:Parameter Name="masp" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drpth" Name="maloai" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="masp" />
                <asp:Parameter Name="tensp" />
                <asp:Parameter Name="maloai" />
                <asp:Parameter Name="dongia" />
                <asp:Parameter Name="donvitinh" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
