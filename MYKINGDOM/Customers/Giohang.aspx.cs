using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM
{
    public partial class Giohang : System.Web.UI.Page
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nếu trang chưa được tải lên trước đó thì nạp dữ liệu vào trang.
            if (!IsPostBack)
                LoadData();
        }

        protected void LoadData()
        {
            dt = (DataTable)Session["GioHang"];
            grdGioHang.DataSource = dt;
            grdGioHang.DataBind();
            grdGioHang.Columns[1].ControlStyle.Width = 80;
            grdGioHang.Columns[2].ControlStyle.Width = 150;
            grdGioHang.Columns[3].ControlStyle.Width = 80;
            grdGioHang.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            grdGioHang.Columns[4].ControlStyle.Width = 80;
            grdGioHang.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            grdGioHang.Columns[5].ControlStyle.Width = 100;
            grdGioHang.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = TinhTongTien(dt);
                Session["tong"] = tong;     // lưu để truyền qua trang DonHang.aspx
                lblTongTien.Text = "Tổng tiền trên giỏ hàng là:" + String.Format("{0:0,000}", tong);
            }
        }
        protected double TinhTongTien(DataTable dt)
        {
            if (dt == null)
                return 0;
            double sum = 0;
            foreach (DataRow row in dt.Rows)
                sum += Convert.ToDouble(row["TongTien"]);
            return sum;
        }
        protected void grdGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
            GridViewRow row = grdGioHang.Rows[e.RowIndex]; //Lấy hàng dữ liệu hiện tại của GridView
            TextBox txtSoluong = (TextBox)(row.Cells[4].Controls[0]);// dụng để lấy control TextBox 
            int Soluong = Convert.ToInt32(txtSoluong.Text);
            dt.Rows[row.DataItemIndex]["SoLuong"] = txtSoluong.Text; // cap nhap so luong
            dt.Rows[row.DataItemIndex]["TongTien"] =
                Convert.ToDouble(dt.Rows[row.DataItemIndex]["Dongia"]) * Soluong;
            //Reset the edit index.
            grdGioHang.EditIndex = -1;
            Session["GioHang"] = dt;
            LoadData();
        }

        protected void grdGioHang_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdGioHang.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void grdGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
            GridViewRow row = grdGioHang.Rows[e.RowIndex];
            dt.Rows[row.DataItemIndex].Delete();
            grdGioHang.EditIndex = -1;
            Session["GioHang"] = dt;
            LoadData();
        }

        protected void grdGioHang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdGioHang.EditIndex = -1;
            LoadData();
        }
    }
}