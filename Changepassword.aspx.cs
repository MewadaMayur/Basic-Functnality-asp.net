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
    public partial class Changepassword : System.Web.UI.Page
    {


        App_Code.Class1 obj = new App_Code.Class1();

        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                ds = obj.calldata("select * from Tbl_Registration where Emp_code='" + txtcode.Text + "' and Pass='" + obj.Encrypt(txtoldpsw.Text) + "'  ");

                if (ds.Tables[0].Rows.Count > 0)
                {

                    obj.savedata("UPDATE  Tbl_Registration SET Pass='" + obj.Encrypt(txtnewpsw.Text) + "' where Emp_code='" + txtcode.Text + "' and Pass='" + obj.Encrypt(txtoldpsw.Text) + "'");
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Password has been changed')", true);
                    Response.Redirect("~/Login/Login.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Employee code/Old Password is wrong.')", true);
         
                }
            }
            catch(Exception ex)
            {
                    Response.Write("<script>alert('" + ex.Message + "') </script>");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "alert('Something went wrong.Enter valid value')", true);

            }


        }

       
    }
}