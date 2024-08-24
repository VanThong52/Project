using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

namespace MYKINGDOM
{
    public partial class Donhang : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        protected void LoadData()
        {
            dt = (DataTable)Session["GioHang"];
            grdGioHang.DataSource = dt;
            grdGioHang.DataBind();
           
            if (dt != null)
            {
                double tong = (double)Session["tong"];
                lbtong.Text = "Tổng tiền trên giỏ hàng là:" + String.Format("{0:0,000}", tong);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime d = DateTime.Now;
            //Tạo mã đơn hàng bằng cách kết hợp ngày, tháng, năm, giờ, phút, giây hiện tại.
            string maDonHang = d.Day.ToString() + d.Month.ToString() +
                (d.Year % 100).ToString() + d.Hour.ToString() +
                d.Minute.ToString() + d.Second.ToString();
            // luu thong tin vao session de su dung ben bang GoiDonHang
            Session["txtHoTen"] = txthoten;
            Session["txtEmail"] = txtemail;
            Session["txtDienThoai"] = txtdienthoai;
            Session["txtSoNha"] = txtsonha;
            Session["txtPhuong"] = txtphuong;
            Session["txtQuan"] = txtquan;
            Session["txtTP"] = txttinh;
            Session["maDH"] = maDonHang;

                MailMessage mail = new MailMessage();
                mail.To.Add(txtemail.Text);
                mail.From = new MailAddress("2121012984@sv.ufm.edu.vn");
                mail.Subject = "Gởi từ MYKINGDOM";
                mail.Body = "Đơn hàng có mã là: " + maDonHang + " sẽ được gởi đến quý khách " +
                        txthoten.Text + ". Xin cám ơn!";
            // Thiết lập các thông tin cho đối tượng SmtpClient
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("2121012984@sv.ufm.edu.vn", "Pqx96438");
                client.Send(mail);
                Server.Transfer("GoiDonhang.aspx");
           
        }

        
    }
     
}