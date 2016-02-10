using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text.RegularExpressions;

namespace WebApplication2
{
    public partial class RegisterPatient : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            int ssn = Convert.ToInt32(TextBox1.Text);
            string name = TextBox2.Text;
            string sex = TextBox3.Text;
            int age = Convert.ToInt16(TextBox4.Text);
            string address = TextBox5.Text;
            long phone = Convert.ToInt64(TextBox6.Text);
            
        

            sql = "insert into patient values(" + ssn + ",'" + name + "','" + sex + "'," + age + ",'" + address + "'," + phone + ");";
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
                        string except=ex.Message.ToString();
                        except=except.Replace("'","");
                        string script="<script>alert('"+except+"');</script>";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts",script);
                    }
                }
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Patient registered successfully');</script>");
            }
            catch (Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }       
    }
}
