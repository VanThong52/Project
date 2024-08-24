using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM
{
    public partial class TimSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txt = (TextBox)this.Master.FindControl("txttsp");
            string name = txt.Text;
            if (name != "")
            {
                string cmdStr = "SELECT * FROM SanPham WHERE tensp like '%" +
                name + "%'";
                scrsp2.SelectCommand = cmdStr;
                dlsp2.DataBind();
            }

            int soluong = dlsp2.Items.Count;    
            if (soluong == 0)
            {
                string errMess = "Không tìm thấy sản phẩm " + name ;
                string scrip = "alert('" + errMess + "')";
                ScriptManager.RegisterStartupScript(this, GetType(), "ErrorAlert", scrip, true);
                lbthongbao.Text = "Không tìm thấy sản phẩm " + name;
            }
            else
            {
                lbthongbao.Text = "";
            } 
                
        }
            
    }
}