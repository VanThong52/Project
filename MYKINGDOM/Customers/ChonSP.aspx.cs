using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM
{
    public partial class ChonSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["SanPham"] == null)
            {
                // tạo view Sanpham với 3 cột masp, tensp, dongia
                ViewState["SanPham"] = new DataTable();
                ((DataTable)ViewState["SanPham"]).Columns.Add("MaSP").ToString();
                ((DataTable)ViewState["SanPham"]).Columns.Add("TenSP").ToString();
                ((DataTable)ViewState["SanPham"]).Columns.Add("Dongia", typeof(double));
            }
            DataTable dtsp = (DataTable)ViewState["SanPham"]; // lấy dữ liệu từ VS sanpham
            string masp = "";
            if (Request.QueryString["MaSP"] != null) // kiểm tra xem có MaSP trong QueryString hay không
                masp = Request.QueryString["MaSP"];
            Session["MaSP"] = masp; //lưu masp vào SP

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MYKINGDOM.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT MaSP, TenSP, Donvitinh, Thuonghieu, Dongia, HinhSP, Ghichu from sanpham  WHERE MaSP= @MaSP ", con);
            cmd.Parameters.AddWithValue("@masp", masp);
            SqlDataReader reader;

            using (con)
            {
                con.Open();
                reader = cmd.ExecuteReader(); // thực thi lệnh

                if (reader.Read()) // duyệt dữ liệu 
                {
                    lbtensp.Text = reader["TenSP"].ToString();
                    lbmsp.Text ="Mã SP: " +  reader["MaSP"].ToString();
                    lbdvt.Text = "ĐVT: " + reader["Donvitinh"].ToString();
                    lbth.Text = "Thương hiệu: " + reader["Thuonghieu"].ToString();
                    lbgia.Text = Convert.ToDouble(reader["Dongia"]).ToString("0,000 VNĐ");
                    lbghichu.Text = "Ghi chú: " + reader["Ghichu"].ToString(); 
                    Imagesp.ImageUrl = reader["HinhSP"].ToString();
                    Imagesp.Height = 500;
                    Imagesp.Width = 400;

                    // thêm dữ liệu vào row đẻ chuẩn bị dữ liệu cho giỏ hàng
                    DataRow row = dtsp.NewRow();
                    row["MaSP"] = reader["MaSP"].ToString();
                    row["TenSP"] = reader["TenSP"].ToString();
                    row["Dongia"] = Convert.ToDouble(reader["Dongia"]);
                    dtsp.Rows.Add(row);
                }

            }
        }
        protected void btngiohang_Click(object sender, EventArgs e)
        {
            DataTable dtSP = (DataTable)ViewState["SanPham"];
            DataTable dtGH;     // Giỏ hàng
            int Soluong = 0;
            if (Session["GioHang"] == null)    // tạo giỏ hàng
            {
                dtGH = new DataTable();
                dtGH.Columns.Add("MaSP");
                dtGH.Columns.Add("TenSP");
                dtGH.Columns.Add("Dongia");
                dtGH.Columns.Add("Soluong");
                dtGH.Columns.Add("TongTien");
            }
            else // đã có giỏ hàng từ session
                dtGH = (DataTable)Session["GioHang"];
            string masp = (string)Session["MaSP"];
            int pos = TimSP(masp, dtGH);        // vị trí sản phẩm trong giỏ hàng
            if (pos != -1)  // tìm thấy
            {
                //cập nhật lại số lượng/ tổng tiền
                Soluong = Convert.ToInt32(dtGH.Rows[pos]["SoLuong"]) + Convert.ToInt32(txtsl.Text);
                dtGH.Rows[pos]["SoLuong"] = Soluong;
                dtGH.Rows[pos]["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGia"]) * Soluong;
            }
            else    //chưa có sản phẩm, thêm sản phẩm vào giỏ
            {
                Soluong = Convert.ToInt32(txtsl.Text);
                DataRow dr = dtGH.NewRow();//tạo một dòng mới cho bang dtGH
                                           // gán dữ liệu cho từng cột trong dòng mới
                dr["MaSP"] = dtSP.Rows[0]["MaSP"];
                dr["TenSP"] = dtSP.Rows[0]["TenSP"];
                dr["Dongia"] = dtSP.Rows[0]["Dongia"];
                dr["Soluong"] = Soluong;
                dr["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["Dongia"]) * Soluong;
                //thêm dòng mới vào giỏ hàng
                dtGH.Rows.Add(dr);
            }
            //lưu giỏ hàng vào session
            Session["GioHang"] = dtGH;
            // trả về trang giỏ hàng
            Response.Redirect("GioHang.aspx");
        }
        public static int TimSP(string masp, DataTable dt)
        {
            int pos = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["MaSP"].ToString().ToLower() == masp.ToLower())
                {
                    pos = i;
                    break;
                }
            }
            return pos;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(txtsl.Text);
            num++;
            txtsl.Text = num.ToString();    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(txtsl.Text) != 0)
            {
                int num = Convert.ToInt32(txtsl.Text);
                num--;
                txtsl.Text = num.ToString();
            }
            else
                txtsl.Text = "1";
        }

    }
    }
