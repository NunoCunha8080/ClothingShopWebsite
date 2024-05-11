using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento
{
    public partial class Gerir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdProdutos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = grdProdutos.Rows[e.NewEditIndex];

            int rowId = Convert.ToInt32(row.Cells[1].Text);

            Response.Redirect("~/Gerenciamento/Comr/GProduto.aspx?id=" + rowId);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}