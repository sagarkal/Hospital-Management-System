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
    public partial class RegisterEmployees : System.Web.UI.Page
    {
        string sql,speciality;
        int ssn;


        protected void Page_Load(object sender, EventArgs e)
        {

        }
     

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                ssn = Convert.ToInt32(TextBox1.Text);
                string name = TextBox2.Text;
                string sex = TextBox3.Text;
                int age = Convert.ToInt16(TextBox4.Text);
                string address = TextBox5.Text;
                long phone = Convert.ToInt64(TextBox6.Text);


                sql = "insert into employees values(" + ssn + ",'" + name + "','" + sex + "'," + age + ",'" + address + "'," + phone + ");";
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
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Employee registered successfully');</script>");
            } catch(Exception ex)
            {
                string except = (string)ex.Message;
                except = except.Replace("'", "");
                string script = "<script>alert('" + except + "');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            }
          }

         protected void Receptionist_Click(object sender, EventArgs e)
         {
             sql = "insert into receptionist values(" + ssn + ");";
             DataTable results1 = new DataTable();
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
                         results1.Load(comm.ExecuteReader());
                     }
                     catch (Exception)
                     { }
                 }
             }
             Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Receptionist registered successfully');</script>"); 
         }

         protected void Nurse_Click(object sender, EventArgs e)
         {

                 sql = "insert into nurse values(" + ssn + ");";
                 DataTable results2 = new DataTable();
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
                             results2.Load(comm.ExecuteReader());
                         }
                         catch (Exception)
                         { }
                     }
                 }
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Nurse registered successfully');</script>"); 
             }

         protected void Physician_Click(object sender, EventArgs e)
         {
             speciality = TextBox7.Text;
             sql = "insert into physician values(" + ssn + ",'" + speciality + "');";
             DataTable results3 = new DataTable();
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
                         results3.Load(comm.ExecuteReader());
                     }
                     catch (Exception)
                     { }
                 }
             }
             Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Physician registered successfully');</script>"); 
         }
         
   }
}