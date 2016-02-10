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
    public partial class Employees : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql = "select * from Employees";
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
                    catch (Exception)
                    {

                    }
                }
                GridView1.DataSource = results;
     
                GridView1.DataBind();
            }
        }
            protected void Button3_Click(object sender, EventArgs e)
            {
                sql = "select Employees.EID,Employees.NAME,Employees.SEX,Employees.AGE,Employees.ADDRESS,Employees.PHONE from Employees,Nurse where Employees.eid=Nurse.eid";
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
                        catch (Exception)
                        {

                        }
                    }
                    GridView1.DataSource = results;
                    GridView1.DataBind();
            }

        }

            protected void Button2_Click(object sender, EventArgs e)
            {
                sql = "select Employees.EID,Employees.NAME,Employees.SEX,Employees.AGE,Employees.ADDRESS,Employees.PHONE from Employees,Receptionist where Employees.eid=Receptionist.eid";
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
                        catch (Exception)
                        {

                        }
                    }
                    GridView1.DataSource = results;
                    GridView1.DataBind();
                }
            }

            protected void Button4_Click(object sender, EventArgs e)
            {
                sql = "select Employees.EID,Employees.NAME,Physician.Speciality,Employees.SEX,Employees.AGE,Employees.ADDRESS,Employees.PHONE from Employees,Physician where Employees.eid=Physician.eid";
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
                        catch (Exception)
                        {

                        }
                    }
                    GridView1.DataSource = results;
                    GridView1.DataBind();
            }
            }


            protected void Button5_Click(object sender, EventArgs e)
            {
                try
                {
                    System.Diagnostics.Process.Start("http://localhost:30427/RegisterEmployees.aspx");
                }
                catch { }

            }

            protected void Button6_Click(object sender, EventArgs e)
            {
                System.Diagnostics.Process.Start("http://localhost:30427/Delete Employee.aspx");
            }

            protected void Update_Click(object sender, EventArgs e)
            {
                System.Diagnostics.Process.Start("http://localhost:30427/Update Employee.aspx");
            }
    }
}