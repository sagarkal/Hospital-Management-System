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
    public partial class BILLING : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://localhost:30427/Create Bill.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            int ssn = Convert.ToInt32(TextBox1.Text);
            string sql = "select Record.rid from Record,Registers,Patient where Patient.ssn="+ssn+" and Patient.ssn=Registers.ssn and Registers.rid=Record.rid;";
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
                GridView1.DataSource = results;
                GridView1.DataBind();
            }
            } catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }

        protected void Viewbill_Click(object sender, EventArgs e)
        {
            try
            { 
            int rid = Convert.ToInt32(TextBox2.Text);
            string sql = "select Bill.bid,Bill.rid,Patient.ssn,Patient.name,Bill.amount from Bill,Patient,Record,Registers where Bill.rid="+rid+" and Bill.rid=Record.rid and Record.rid=Registers.rid and Registers.ssn=Patient.ssn;";
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
                GridView2.DataSource = results;
                GridView2.DataBind();
            }
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