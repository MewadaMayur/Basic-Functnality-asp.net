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
using AppsTech.App_Code;
using System.Web.Configuration;
using System.Text;
using System.IO;

namespace AppsTech.Login
{
    public partial class Login1 : System.Web.UI.Page
    {
        //Declaring class objects
        App_Code.Class1 obj = new App_Code.Class1();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //Clear all session variables
                Session.RemoveAll();
                ds = obj.calldata("select * from Tbl_Sec_Que");
                drpsecque.DataSource = ds.Tables[0];
                drpsecque.DataTextField = "sec_que";
                drpsecque.DataValueField = "que_id";
                drpsecque.DataBind();
                System.Web.HttpContext.Current.Session["LoginID"] = "";
            }
        }

        //Login logic
        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                obj.savedata("UPDATE  Tbl_Registration SET Sec_que='" + drpsecque.SelectedItem.ToString() + "', Sec_ans='" + txtans.Text + "' where Emp_code='" + txtecode.Text + "' and Pass='" + obj.Encrypt(txtpwd.Text) + "'");
                ds = obj.calldata("select Emp_code from Tbl_Registration where Emp_code='" + txtecode.Text + "'");
                System.Web.HttpContext.Current.Session["LoginID"] = ds.Tables[0].Rows[0][0].ToString();
                Response.Redirect("~/Login/Login.aspx");
            }
            catch
            {
                Response.Write("<script>alert('Write Proper Security Answer') </script>");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Something went wrong')", true);
            }
            
        }
        protected void new_btn_login_Click(object sender, EventArgs e)
        {
            var pass = obj.Encrypt(txtpwd.Text);
            DataSet ds = obj.calldata("select * from Tbl_Registration where Emp_code='" + txtecode.Text + "' and Pass='" + pass + "';");
            try
            {
                //Condition to check rows in table
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0][9].ToString() == "-")
                    {
                        lblseq.Visible = true;
                        lblans.Visible = true;
                        drpsecque.Visible = true;
                        txtans.Visible = true;
                        btn_login.Visible = true;
                        new_btn_login.Visible = false;
                        Requireans.Enabled = true;
                    }
                    else
                    {
                        ds = obj.calldata("select Emp_code,role_type from Tbl_Registration where Emp_code='" + txtecode.Text + "'");
                        System.Web.HttpContext.Current.Session["LoginID"] = ds.Tables[0].Rows[0][0].ToString();
                        if (ds.Tables[0].Rows[0][1].ToString() == "Admin")
                        {
                            Response.Redirect("~/Admin/Dashboard/Dashboard.aspx", true);
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Login successfully'); window.location='" + Request.ApplicationPath + "../Kingston/Kingston.aspx';", true);
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Login successfully'); window.location='" + Request.ApplicationPath + "../Kingston/Kingston.aspx';", true);
                        }

                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Employee code/Password is wrong.')", true);
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Something went wrong')", true);
            
            }

        }




    
    }
}