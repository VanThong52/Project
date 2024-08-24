using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM.Admin
{
    public partial class ThemSP2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string [] str = { "HỘP", "CON", "TÚI", "CHIẾC", "CÁI", "HŨ" };
            drpdvt.DataSource = str;
            drpdvt.DataBind();

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            string strFileUpload = "";
            try
            {
                if (uphinh.HasFile) // kiem tra co file anh hay chua
                {
                    strFileUpload = "~/images/" + uphinh.FileName;
                    string path = MapPath("/Images/") + uphinh.FileName;
                    uphinh.PostedFile.SaveAs(path);
                }
                                                                        
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MYKINGDOM.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Insert into Sanpham Values (@masp, @tensp, @maloai,@donvitinh, @dongia, @thuonghieu,@hinhsp,@ghichu)", con);
                cmd.Parameters.AddWithValue("@masp", txbmsp.Text);
                cmd.Parameters.AddWithValue("@tensp", txbtsp.Text);
                cmd.Parameters.AddWithValue("@maloai", drplsp.SelectedValue);
                cmd.Parameters.AddWithValue("@dongia", Convert.ToDouble(txtdg.Text));
                cmd.Parameters.AddWithValue("@donvitinh", drpdvt.SelectedValue);
                cmd.Parameters.AddWithValue("@thuonghieu", drpth.SelectedValue);
                cmd.Parameters.AddWithValue("@ghichu", (txtgc.Text).ToString());
                cmd.Parameters.AddWithValue("@hinhsp", strFileUpload);

                using (con)
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lbtrangthai.Text = "Thêm thành công";
                    //Server.Transfer("ThemSP2.aspx");
                }
                

            }
            catch (Exception ex)
            {
                lbtrangthai.Text = ex.Message;
            }
        }

        protected void btnhb_Click(object sender, EventArgs e)
        {
            txtdg.Text = " ";
            txbmsp.Text = " ";
            txbtsp.Text = " ";
            txtgc.Text = " ";
            lbtrangthai.Text = " ";
        }
    }
}