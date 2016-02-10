using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/RECORD.aspx");
            }
            catch { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/Patients%20Page.aspx");
            }
            catch { }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/Employees.aspx");
            }
            catch { }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/BILLING.aspx");
            }
            catch { }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/Rooms.aspx");
            }
            catch { }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/ABOUT%20US.aspx");
            }
            catch { }

        }
    }
}