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
    public partial class RoomAssignment : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            int RoomID = Convert.ToInt32(TextBox1.Text);
            int SSN = Convert.ToInt32(TextBox2.Text);
            int RID = Convert.ToInt32(TextBox3.Text);
            int EID = Convert.ToInt32(TextBox4.Text);


            sql = "insert into AssignedTo values(" + RoomID + "," + SSN + "," + RID + ","+EID+ ");";
            DataTable results = new DataTable();
            using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management;"))
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
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Entry inserted successfully');</script>");
            }
            catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }
    }
}