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
    public partial class RECORD : System.Web.UI.Page
    {
        string sql,sql1,sql2,sql3;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int ssn = Convert.ToInt32(TextBox1.Text);
                sql = "select Patient.SSN,Patient.Name,Patient.Sex,Patient.Age,Patient.Address,Patient.Phone,Record.RID,Record.RDATE,Record.Symptom,Registers.EID as ReceptionistID,Treatment.EID as PhysicianID,Treatment.Type as TreatmentType,Treatment.cost as EstimatedCost  from Patient,Record,Registers,Treatment where Patient.SSN=" + ssn + " AND Patient.SSN=Registers.SSN AND Registers.RID=Record.RID AND Treatment.RID=Record.RID;";
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
                    GridView1.DataSource = results;
                    GridView1.DataBind();
                }
            }catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sql = "select Patient.SSN,Patient.Name,Patient.Sex,Patient.Age,Patient.Address,Patient.Phone,Record.RID,Record.RDATE,Record.Symptom,Registers.EID as ReceptionistID,Treatment.EID as PhysicianID,Treatment.Type as TreatmentType,Treatment.cost as EstimatedCost from Patient,Record,Registers,Treatment where Patient.SSN=Registers.SSN AND Registers.RID=Record.RID AND Treatment.RID=Record.RID;";
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
                GridView1.DataSource = results;
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int ssn = Convert.ToInt32(TextBox2.Text);
                int rid = Convert.ToInt32(TextBox3.Text);
                string date = TextBox4.Text;
                string symptom = TextBox5.Text;
                int eid = Convert.ToInt32(TextBox6.Text);
                int eid1 = Convert.ToInt32(TextBox7.Text);
                string treatment = TextBox8.Text;
                int cost = Convert.ToInt32(TextBox9.Text);

                sql1 = "insert into record values(" + rid + ",'" + date + "','" + symptom + "');";
                DataTable results1 = new DataTable();
                using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management;"))
                {
                    try
                    {
                        con.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm = new MySqlCommand(sql1, con))
                    {
                        try
                        {
                            results1.Load(comm.ExecuteReader());
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

                sql2 = "insert into Registers values(" + ssn + "," + rid + "," + eid + ");";
                DataTable results2 = new DataTable();
                using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management;"))
                {
                    try
                    {
                        con.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm = new MySqlCommand(sql2, con))
                    {
                        try
                        {
                            results2.Load(comm.ExecuteReader());
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

                sql3 = "insert into Treatment values(" + ssn + "," + rid + "," + eid1 + ",'" + treatment + "'," + cost + ");";
                DataTable results3 = new DataTable();
                using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root;password=mysqlmysql;persistsecurityinfo=True;database=hospital_management;"))
                {
                    try
                    {
                        con.Open();
                    }
                    catch (Exception)
                    { }
                    using (MySqlCommand comm = new MySqlCommand(sql3, con))
                    {
                        try
                        {
                            results3.Load(comm.ExecuteReader());
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


                if (TextBox10.Text == "Y" || TextBox10.Text == "y")
                {
                    int noDays = Convert.ToInt32(TextBox11.Text);
                    string sql = "insert into Inpatient values(" + ssn + "," + noDays + "," + rid + ");";
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
                }

                else
                {
                    string sql = "insert into Outpatient values(" + ssn + "," + rid + ");";
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

                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Records inserted successfully');</script>");
            } catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            sql = "select Patient.SSN,Patient.Name,Patient.Sex,Patient.Age,Patient.Address,Patient.Phone,Record.RID,Record.RDATE,Record.Symptom,Inpatient.NoDays,Registers.EID as ReceptionistID,Treatment.EID as PhysicianID,Treatment.Type as TreatmentType,Treatment.cost as EstimatedCost from Patient,Record,Registers,Treatment,Inpatient where Patient.SSN=Registers.SSN AND Registers.RID=Record.RID AND Treatment.RID=Record.RID AND Inpatient.RID=Record.RID;";
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
                GridView1.DataSource = results;
                GridView1.DataBind();
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            sql = "select Patient.SSN,Patient.Name,Patient.Sex,Patient.Age,Patient.Address,Patient.Phone,Record.RID,Record.RDATE,Record.Symptom,Registers.EID as ReceptionistID,Treatment.EID as PhysicianID,Treatment.Type as TreatmentType,Treatment.cost as EstimatedCost from Patient,Record,Registers,Treatment,Outpatient where Patient.SSN=Registers.SSN AND Registers.RID=Record.RID AND Treatment.RID=Record.RID AND Outpatient.RID=Record.RID;";
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
                GridView1.DataSource = results;
                GridView1.DataBind();
            }
        }
    }
}
