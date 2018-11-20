using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AppsTech.Login
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        
        App_Code.Class1 obj = new App_Code.Class1();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                btnsub.Visible = true;
                txtempcode.Visible = true;
            }
        }

        
        protected void btnsub_Click(object sender, EventArgs e)
        {
            try
            {
                ds = obj.calldata("select Sec_que from Tbl_Registration where Emp_code='" + txtempcode.Text + "'");
                 txtsecque.Text = ds.Tables[0].Rows[0][0].ToString();
                 Session["Sec_que"] = ds.Tables[0].Rows[0][0].ToString();
                 txtsecque.Visible = true;
                 txtsecans.Visible = true;
                 TextBox1.Visible = true;
                 TextBox2.Visible = true;
                 Button1.Visible = true;
                txtempcode.Visible = false;
                btnsub.Visible = false;
                 RequiredFieldValidator1.Enabled = true;
                RequiredFieldValidator3.Enabled = true;
                RequiredFieldValidator4.Enabled = true;
                 txtsecans.Text = "";
             }
            catch (Exception ex)
            {
                Response.Write("<script>'alert(" + ex.Message +")'</script>");
               ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Employee code is wrong Or something went wrong')", true);
                btnsub.Visible = false;
                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            RequiredFieldValidator1.Enabled = true;

            try
            {
                ds = obj.calldata("select Sec_ans from Tbl_Registration where Emp_code='" + txtempcode.Text + "'");
                if (ds.Tables[0].Rows[0][0].ToString() == txtsecans.Text)
                {

                    obj.savedata("update Tbl_Registration set Pass='" + obj.Encrypt(TextBox1.Text) + "' where Emp_code='" + txtempcode.Text + "' ");
                    txtempcode.Text = "";
                    txtsecans.Text = "";
                    txtsecque.Text = "";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Password Reset')", true);
                    Response.Redirect("~/Login/Login.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Somthing went wrong.Please try again.')", true);
                    btnsub.Visible = false;
                }
            }
            catch (Exception ex)
            {
                btnsub.Visible = false;
             //   Response.Write("<script>alert('" + ex.Message + "') </script>");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Somthing went wrong.Please try again.')", true);

            }
        }


    }
}