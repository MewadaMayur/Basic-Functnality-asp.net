<%@ Page Title="" Language="C#" MasterPageFile="~/Kingston/Kingston.Master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="AppsTech.Login.Changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">

AppsTech | Changepassword
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="main">
	  <div class="container">
     <div>
    <div class="col-xs-12 col-lg-3 col-md-3 col-sm-3"></div>
  <div id="right_part"class=" col-xs-12 col-lg-6 col-md-6 col-sm-6 padding_mission mission_change">
     <div>
    <div class="vision">
      <div class="form-group">
        <label for="e_code">Enter Employee Code:</label>
          <asp:TextBox ID="txtcode" runat="server" CssClass="form-control" placeholder="Enter Employee Code"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="txtcode" Display="Dynamic" 
              ErrorMessage="Enter Your Employee Code" ForeColor="Red" 
              ViewStateMode="Enabled" Font-Size="11px"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
              ControlToValidate="txtcode" Display="Dynamic" Font-Size="11px"
              ErrorMessage="Enter Valid Employee Code " ForeColor="Red" 
              ValidationExpression="^(ATSEMP[A-Z]*[._\-/]*[0-9A-Z]+)|([0-9A-Z]+[._\-/]*E[A-Z]*)$&quot;" 
              ViewStateMode="Enabled"></asp:RegularExpressionValidator>
       </div>
       <div class="form-group">
        <label for="e_code">Enter Old Password:</label>
           <asp:TextBox ID="txtoldpsw" runat="server"  TextMode="Password" CssClass="form-control" 
               placeholder="Enter Old Password"  ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ControlToValidate="txtoldpsw" Display="Dynamic" 
               ErrorMessage="Enter Your Old Password" ForeColor="Red" ViewStateMode="Enabled" Font-Size="11px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorpsw" ControlToValidate="txtoldpsw"  runat="server" ErrorMessage="Enter Valid Value" ValidationExpression="^[^'\&quot;\?\;\<\[\]\|\\\+\=\-\ _ \(\)\*\&\^\%\.\/\>\{\}\,\:]*$" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RegularExpressionValidator>
     
       </div>
      <div class="form-group">
        <label>Password:</label>
          <asp:TextBox ID="txtnewpsw" CssClass="form-control" TextMode="Password" placeholder="Enter New password" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="txtnewpsw" Display="Dynamic" 
              ErrorMessage="Enter Your new Password" ForeColor="Red" ViewStateMode="Enabled" Font-Size="11px"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidatornewpsw" ControlToValidate="txtnewpsw"  runat="server" ErrorMessage="Enter Valid Value" ValidationExpression="^[^'\&quot;\?\;\<\[\]\|\\\+\=\-\ _ \(\)\*\&\^\%\.\/\>\{\}\,\:]*$" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RegularExpressionValidator>
     
      </div>
      <div class="form-group">
        <label>Confirm Password:</label>
          <asp:TextBox ID="conpass" TextMode="Password" runat="server"  CssClass="form-control" placeholder="Enter Confirm Password"  ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="conpass" Display="Dynamic" fontsize="11px"
              ErrorMessage="Enter Your Confirm Password" ForeColor="Red" font-size="11px"
             ></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
              ControlToCompare="txtnewpsw" ControlToValidate="conpass" Display="Dynamic" 
              ErrorMessage="Password and Confirm Password  not match" ForeColor="Red" font-size="11px" 
              ></asp:CompareValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidatornew" ControlToValidate="conpass"  runat="server" ErrorMessage="Enter Valid Value" ValidationExpression="^[^'\&quot;\?\;\<\[\]\|\\\+\=\-\ _ \(\)\*\&\^\%\.\/\>\{\}\,\:]*$" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RegularExpressionValidator>
      </div>
        <asp:Button ID="btn_psw" CssClass="btn log_btn margin_sub" runat="server" 
            Text="Change Password" Font-Bold="True" 
            onclick="btn_login_Click" />
      <div class="col-xs-12 col-lg-12 col-md-12 col-sm-12">
         <div class="form-group" ID="Part_Forgot" >
           <%--<asp:HyperLink ID="HyperLink1" runat="server" 
               NavigateUrl="~/Login/Login.aspx"  CssClass="forgot" Width="50%">Back To Login Page</asp:HyperLink>--%>
           </div>
    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="false" ShowSummary="False" />
       
      </div>
      </div>
       
      </div>
      <div class="col-xs-12 col-lg-3 col-md-3 col-sm-3"></div>
          </div>
          </div>
       
    </div>

    
<!-- popup -->
<%--<div id="popup_change" class="popup_success">
      Password has been changed
      <i id="btn_change" class="fa fa-times" aria-hidden="true"></i>
</div>--%>
</asp:Content>
