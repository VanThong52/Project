using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYKINGDOM
{
    public partial class Main : System.Web.UI.MasterPage
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                dt = (DataTable)Session["GioHang"];
                lbsl.Text = dt.Rows.Count.ToString();
            }    
                
        }

      
    }
}