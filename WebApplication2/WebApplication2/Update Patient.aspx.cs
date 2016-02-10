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
    public partial class Update_Patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            int ssn=Convert.ToInt32(TextBox1.Text);
            string attribute = TextBox2.Text;
            string value=TextBox3.Text;
            long numValue;
            string sql="";

            switch(attribute)
            {
            case "name":
            case "sex":
            case "address":
            sql= "update Patient set "+attribute+"="+"'"+value+"'"+" where ssn="+ssn+";";
            break;
            case "age":
            case "phone":
            numValue=Convert.ToInt64(value);
            sql = "update Patient set " + attribute + "=" + "'" + numValue + "'" + " where ssn=" + ssn + ";";
            break;
            }

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
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Patient updated successfully');</script>");
            } catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }
    }
}