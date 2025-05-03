// File: Buy.aspx.cs
using System;

namespace WebApplication1.VESTASIM
{
    public partial class buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ClientID"] != null)
                {
                    loginPanel.Visible = false;
                    logoutPanel.Visible = true;
                }
                else
                {
                    loginPanel.Visible = true;
                    logoutPanel.Visible = false;
                }
            }
        }
    }
}
