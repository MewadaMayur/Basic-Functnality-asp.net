using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AppsTech;
using System.Security.Cryptography;

namespace AppsTech.Login
{
    
    public partial class Registration : System.Web.UI.Page
    {

        App_Code.Class1 obj = new App_Code.Class1();

        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                loadrole();
                cleardata();
            }
          
            
        }

        public void loadrole()
        {

            ds = obj.calldata("select * from Tbl_User_role");
            drpuser.DataSource = ds.Tables[0];
            drpuser.DataValueField = "User_id";
            drpuser.DataTextField = "User_role";
            drpuser.DataBind();

        }
        public void cleardata()
        {
            txtadd.Text = "";
            txtcpsw.Text = "";
            txtdt.Text = "";
            txtemail.Text = "";
            txtlname.Text = "";
            txtpsw.Text = "";
            fname.Text = "";
            txtcompemail.Text = "";
           

        }
  

        protected void btn_login_Click(object sender, EventArgs e)
        {
             /* EmployeeCode for registration table */
            try
            {
                string yr = DateTime.Today.Year.ToString();
                string mn = DateTime.Today.Month.ToString();
                string dt = DateTime.Today.Day.ToString();
                string date = DateTime.Today.ToString("MMyy");
                ds = obj.calldata("select * from Tbl_Registration");
                if (ds.Tables[0].Rows.Count == 0)
                {
                    int new_empcode = 01;
                    obj.savedata("insert into Tbl_Registration(Emp_code,Fname,Lname,Email,Company_email,Gender,Emp_add,Pass,Sec_que,Sec_ans,role_type,dob) values('" + "ATSEMP" + date + new_empcode + "','" + fname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtcompemail.Text + "','" + drpgen.SelectedItem.Text + "','" + txtadd.Text + "','" + obj.Encrypt(txtpsw.Text.Trim()) + "','-','-','" + drpuser.SelectedItem.Text + "','" + txtdt.Text + "')");
                    Response.Write("<script>" + " alert('Registration Successful.') < script > ");
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Registration Successful')", true);
                }
                else
                {
                      ds = obj.calldata("select max(Reg_id) from Tbl_Registration");
                      int new_code = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1;
                      obj.savedata("insert into Tbl_Registration(Emp_code,Fname,Lname,Email,Company_email,Gender,Emp_add,Pass,Sec_que,Sec_ans,role_type,dob) values('" + "ATSEMP" + date + new_code + "','" + fname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtcompemail.Text + "','" + drpgen.SelectedItem.Text + "','" + txtadd.Text + "','" + txtpsw.Text + "','-','-','" + drpuser.SelectedItem.Text + "','" + txtdt.Text + "')");
                      cleardata();
                      ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Registration Successful.)", true);
                      Response.Redirect("~/Login/Login.aspx");
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Somthing Went Wrong')", true);
            }
        }

     

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                RegularExpressionValidator1.Enabled = false;
                cleardata();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
            }
            
            
        }
    }
}