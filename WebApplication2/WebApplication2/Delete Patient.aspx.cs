using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Delete_Patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            int ssn = Convert.ToInt32(TextBox1.Text);
            string sql = "delete from Patient where ssn=" + ssn + ";";
            DataTable results = new DataTable();
            using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management"))
            {
                try
                {
                    con.Open();
                }
                catch (Exception)
                { }
                using (MySqlCommand comm = new MySqlCommand(sql, con))
                {
                    try
                    {
                        results.Load(comm.ExecuteReader());
                    }
                    catch (Exception ex)
                    {
                        string except = ex.Message.ToString();
                        except = except.Replace("'", "");
                        string script = "<script>alert('" + except + "');</script>";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
                    }
                }
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Patient deleted successfully');</script>");
            } catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://localhost:30427/Patients Page.aspx");
        }
    }
}