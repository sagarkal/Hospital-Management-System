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
    public partial class Patients_Page : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql = "select * from Patient";
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
                GridView2.DataSource = results;
                GridView2.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start("http://localhost:30427/RegisterPatient.aspx");
            }
            catch { }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://localhost:30427/Delete Patient.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://localhost:30427/Update Patient.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                int ssn = Convert.ToInt32(TextBox1.Text);
                sql = "select * from insurance where ssn=" + ssn + ";";
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
                    GridView3.DataSource = results;
                    GridView3.DataBind();
                }
            }catch (Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }
    }
}
