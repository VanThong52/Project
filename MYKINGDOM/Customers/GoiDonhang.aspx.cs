using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM
{
    public partial class GoiDonhang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                // tao ra textbox va gan dl tu Session vao
                TextBox txtHoTen = (TextBox)Session["txtHoTen"];
                TextBox txtDienThoai = (TextBox)Session["txtDienThoai"];
                TextBox txtSoNha = (TextBox)Session["txtSoNha"];
                TextBox txtPhuong = (TextBox)Session["txtPhuong"];
                TextBox txtQuan = (TextBox)Session["txtQuan"];
                TextBox txtTP = (TextBox)Session["txtTP"];
                string maDH = (string)Session["maDH"];
                lbThongBao.Text = "<br />Xin chào (anh/chị) " + txtHoTen.Text + ",<br />";
                lbThongBao.Text += "Quý khách vừa đặt thành công các sản phẩm của shop. ";
                lbThongBao.Text += "Số điện thoại của quý khách là: " + txtDienThoai.Text;
                lbThongBao.Text += ". Mã đơn hàng của quý khách là: " + maDH + ".<br />";
                lbThongBao.Text += "Sản phẩm sẽ được giao đến địa chỉ của quý khách tại ";
                lbThongBao.Text += txtSoNha.Text + ", " + txtPhuong.Text + ", " + txtQuan.Text + ", " + txtTP.Text;
                lbThongBao.Text += " trong 2 - 3 ngày làm việc.<br />";
                lbThongBao.Text += "Mọi thông tin về đơn hàng sẽ được gửi tới email của quý khách, ";
                lbThongBao.Text += "vui lòng kiểm tra email để biết thêm chi tiết.<br />";
                lbThongBao.Text += "Cảm ơn quý khách đã tin tưởng và giao dịch tại shop.<br />";
                lbThongBao.Text += "Mọi thắc mắc vui lòng liên hệ: xxxx xxxx.<br /><br />";
            }
        }
    }
}