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
    public partial class Create_Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                int ssn = Convert.ToInt32(TextBox1.Text);

                int eid = Convert.ToInt32(TextBox4.Text);
                int bid = Convert.ToInt32(TextBox5.Text);
                string visitDate = TextBox6.Text;
                int other = Convert.ToInt32(TextBox7.Text);
                int rid = Convert.ToInt32(TextBox8.Text);
                string sql, sql1;


                int coverage = Convert.ToInt32(TextBox10.Text);
                int iid = Convert.ToInt32(TextBox9.Text);
                int amount = 0, a = 0;
                sql = "insert into Insurance values(" + iid + "," + coverage + "," + ssn + ");";
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

                string sql2 = "select treatment.cost as TreatmentCost from treatment where treatment.rid=" + rid + ";";
                DataTable results2 = new DataTable();
                using (MySqlConnection con1 = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management"))
                {
                    try
                    {
                        con1.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm1 = new MySqlCommand(sql2, con1))
                    {
                        try
                        {
                            results2.Load(comm1.ExecuteReader());
                        }
                        catch (Exception ex)
                        {
                            string except = ex.Message.ToString();
                            except = except.Replace("'", "");
                            string script = "<script>alert('" + except + "');</script>";
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
                        }
                    }
                    GridView1.DataSource = results2;
                    GridView1.DataBind();

                    a = Convert.ToInt32(GridView1.Rows[0].Cells[0].Text);
                    amount += a;
                }

                int roomday = 0, perdaycost = 0, roomcost = 0;

                string sql3 = "select inpatient.NoDays as NoOfDays from inpatient where inpatient.rid=" + rid + ";";
                DataTable results3 = new DataTable();
                using (MySqlConnection con1 = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management"))
                {
                    try
                    {
                        con1.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm1 = new MySqlCommand(sql3, con1))
                    {
                        try
                        {
                            results3.Load(comm1.ExecuteReader());
                        }
                        catch (Exception ex)
                        {
                            string except = ex.Message.ToString();
                            except = except.Replace("'", "");
                            string script = "<script>alert('" + except + "');</script>";
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
                        }
                    }
                    GridView2.DataSource = results3;
                    GridView2.DataBind();

                    try
                    {
                        roomday = Convert.ToInt32(GridView2.Rows[0].Cells[0].Text);
                    }
                    catch (Exception)
                    { }
                }

                string sql4 = "select room.CostPD as CostPerDayofRoom from room,assignedto where assignedto.rid=" + rid + " and room.RoomID=assignedto.RoomID;";
                DataTable results4 = new DataTable();
                using (MySqlConnection con1 = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management"))
                {
                    try
                    {
                        con1.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm1 = new MySqlCommand(sql4, con1))
                    {
                        try
                        {
                            results4.Load(comm1.ExecuteReader());
                        }
                        catch (Exception ex)
                        {
                            string except = ex.Message.ToString();
                            except = except.Replace("'", "");
                            string script = "<script>alert('" + except + "');</script>";
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
                        }
                    }
                    GridView3.DataSource = results4;
                    GridView3.DataBind();
                    try
                    {
                        perdaycost = Convert.ToInt32(GridView3.Rows[0].Cells[0].Text);
                    }
                    catch (Exception) { }
                }

                roomcost = roomday * perdaycost;
                amount += roomcost;
                amount = amount + other - coverage;
                if (amount < 0)
                    amount = 0;
                Label1.Text = "Total amount=" + amount;

                sql1 = "insert into Bill values(" + bid + "," + "'" + visitDate + "'" + "," + amount + "," + ssn + "," + eid + "," + iid + "," + rid + ");";
                DataTable results1 = new DataTable();

                using (MySqlConnection con1 = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management"))
                {
                    try
                    {
                        con1.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm1 = new MySqlCommand(sql1, con1))
                    {
                        try
                        {
                            results1.Load(comm1.ExecuteReader());
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