using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Menu menu = (Menu)this.Master.FindControl("menu1");
            if (menu.SelectedValue != "")
            {
                string cmdStr = "SELECT MaSP,HinhSP,TenSP,Dongia FROM SanPham WHERE MaLoai = '" +
                menu.SelectedValue + "'";
                scrsp.SelectCommand = cmdStr;
                listsp.DataBind();
            }
        }


    }
}